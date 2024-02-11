const {
    nodeResolve,
} = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/@rollup/plugin-node-resolve");
const commonjs = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/@rollup/plugin-commonjs");
const clear = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/rollup-plugin-clear");
const copy = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/rollup-plugin-copy");
const esbuild = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/rollup-plugin-esbuild");
const { babel } = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/@rollup/plugin-babel");
const nodePolyfills = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/rollup-plugin-node-polyfills");
const mendixResolve = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/rollup-plugin-mendix-resolve.js");
const css = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/rollup-plugin-import-css");
const generatePrecacheServiceWorker = require("D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/generate-precache-serviceworker");

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
    treeshake: {
        // commented for now, as rollup stripped mobx configuration from index.ts
        // moduleSideEffects: false,
    },
    plugins: [
        mendixResolve(
            "D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/web-resolutions.json",
            "D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules",
            "D:/UKTC PROGRAMMING/Mendix-Projetcs/ExpenseApp_ShipBuildingCompany/deployment/web/cachetag.txt"
        ),
        nodePolyfills(),
        esbuild({
            // All options are optional
            sourceMap: !isProduction, // default
            exclude: [JAVASCRIPT_SOURCE_PATH_REGEX, PLUGGABLE_WIDGETS_PATH_FILTER],
            minify: isProduction,
            // Like @rollup/plugin-replace
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
            moduleDirectories: ["D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules"]
        }),
        commonjs({ transformMixedEsModules: true, exclude: [/mendix-web/, PLUGGABLE_WIDGETS_PATH_FILTER] }),
        // @rollup/plugin-babel must be placed after @rollup/plugin-commonjs
        babel({
            babelHelpers: "bundled",
            include: JAVASCRIPT_SOURCE_PATH_REGEX,
            presets: [
                [
                    "D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/@babel/preset-env",
                    { targets: { safari: "13" } },
                ],
            ],
            plugins: [
                "D:/UKTC PROGRAMMING/10.0.0.9976/modeler/tools/node/node_modules/@babel/plugin-syntax-dynamic-import",
            ],
        }),
        clear({
            targets: ["dist"],
            // watch: true,
        }),
        css({
            output: "widgets.css",
            alwaysOutput: true,
            minify: isProduction
        }),
        generatePrecacheServiceWorker({
            deploymentDir: "D:/UKTC PROGRAMMING/Mendix-Projetcs/ExpenseApp_ShipBuildingCompany/deployment"
        }),
        copy({
            targets: [
              { src: 'D:/UKTC PROGRAMMING/Mendix-Projetcs/ExpenseApp_ShipBuildingCompany/deployment/web/widgets/*', dest: 'dist' },
            ]
        })
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