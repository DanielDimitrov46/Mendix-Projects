import { nodeResolve } from "file://C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/@rollup/plugin-node-resolve/dist/cjs/index.js";
import commonjs from "file://C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/@rollup/plugin-commonjs/dist/cjs/index.js";
import { babel } from "file://C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/@rollup/plugin-babel/dist/cjs/index.js";
import clear from "file://C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/rollup-plugin-clear/dist/index.js";
import esbuild from "file://C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/rollup-plugin-esbuild/dist/index.mjs";
import css from "file://C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/rollup-plugin-import-css/dist/plugin.mjs";
import nodePolyfills from "file://C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/rollup-plugin-node-polyfills/dist/index.js";

import mendixCopy from "file://C:/Programming/10.6.11.39264/modeler/tools/node/rollup-plugin-mendix-copy.mjs";
import mendixResolve from "file://C:/Programming/10.6.11.39264/modeler/tools/node/rollup-plugin-mendix-resolve.mjs";
import generatePrecacheServiceWorker from "file://C:/Programming/10.6.11.39264/modeler/tools/node/generate-precache-serviceworker.mjs";

const JAVASCRIPT_SOURCE_PATH_REGEX = /javascriptsource/;
const PLUGGABLE_WIDGETS_PATH_FILTER = "./widgets/**";

const isProduction = process.env.NODE_ENV === "production";

export default {
    input: "index.js",
    watch: {
        clearScreen: false,
    },
    output: {
        dir: "dist",
        format: "es",
        chunkFileNames: "[name].js",
        sourcemap: !isProduction,
        manualChunks(id) {
            if (id.includes("node_modules")) {
                return "commons";
            }
        },
    },
    treeshake: isProduction,
    plugins: [
        mendixResolve(
            "C:/Programming/10.6.11.39264/modeler/tools/node/web-resolutions.json",
            "C:/Programming/10.6.11.39264/modeler/tools/node/node_modules",
            "D:/UKTC PROGRAMMING/Mendix-Projects/Employee_Onboarding_App/deployment/web/cachetag.txt"
        ),
        nodePolyfills(),
        esbuild({
            sourceMap: !isProduction,
            exclude: [JAVASCRIPT_SOURCE_PATH_REGEX, PLUGGABLE_WIDGETS_PATH_FILTER],
            minify: isProduction,
            target: "ES2020",
            define: {
                "process.env.NODE_ENV": JSON.stringify(process.env.NODE_ENV),
            },
            loaders: {
                // Enable JSX in .js files too
                ".js": "jsx",
            },
        }),
        ignore(/react-native/),
        nodeResolve({
            modulePaths: ["C:/Programming/10.6.11.39264/modeler/tools/node/node_modules"],
        }),
        commonjs({ transformMixedEsModules: true, exclude: [/mendix-web/, PLUGGABLE_WIDGETS_PATH_FILTER] }),
        babel({
            babelHelpers: "bundled",
            include: JAVASCRIPT_SOURCE_PATH_REGEX,
            presets: [
                [
                    "C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/@babel/preset-env",
                    { targets: { safari: "13" } },
                ],
            ],
            plugins: [
                "C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/@babel/plugin-syntax-dynamic-import",
                "C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/babel-plugin-transform-bigint-to-jsbi",
            ],
        }),
        clear({
            targets: ["dist"],
        }),
        css({
            output: "widgets.css",
            alwaysOutput: true,
            minify: isProduction,
        }),
        generatePrecacheServiceWorker({
            deploymentDir: "D:/UKTC PROGRAMMING/Mendix-Projects/Employee_Onboarding_App/deployment",
        }),
        mendixCopy({
            targets: [
                {
                    dest: "dist",
                    exclude: [".js", ".mjs"],
                    src: "D:/UKTC PROGRAMMING/Mendix-Projects/Employee_Onboarding_App/deployment/web/widgets",
                },
                {
                    dest: "dist/wa-sqlite-async.wasm",
                    src: "C:/Programming/10.6.11.39264/modeler/tools/node/node_modules/@mendix/wa-sqlite/dist/wa-sqlite-async.wasm",
                },
            ],
        }),
    ],
};

function ignore(regex) {
    const emptyFile = "export default {}";
    const emptyFileName = "\0rollup_plugin_ignore_empty_module_placeholder";

    return {
        name: "ignore",
        resolveId(importee) {
            return importee === emptyFileName || regex.test(importee) ? emptyFileName : null;
        },
        load(id) {
            return id === emptyFileName ? emptyFile : null;
        },
    };
}
