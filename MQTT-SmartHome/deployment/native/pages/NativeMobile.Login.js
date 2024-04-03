import { createElement } from "react";
const React = { createElement };

import { ActionProperty } from "mendix/ActionProperty";
import { AttributeProperty } from "mendix/AttributeProperty";
import { ExpressionProperty } from "mendix/ExpressionProperty";
import { NanoflowObjectProperty } from "mendix/NanoflowObjectProperty";
import { StyleProperty } from "mendix/StyleProperty";
import { TextProperty } from "mendix/TextProperty";

import { Button } from "mendix/Button";
import { Container } from "mendix/Container";
import { DataView } from "mendix/DataView";
import { Text } from "mendix/Text";
import { TextBox } from "mendix/TextBox";
import { addEnumerations, asPluginWidgets, t } from "mendix/native";

import { mainContent, sidebar } from "D:/UKTC PROGRAMMING/Mendix-Projects/MQTT-SmartHome/deployment/native/layouts/Atlas_Core.NativePhone_TopBarOnly.js";

import * as styles from "../styles.js";

const { $Container, $DataView, $TextBox, $Text, $Button } = asPluginWidgets({ Container, DataView, TextBox, Text, Button });

const placeholder$Main = () => [
    <$Container key="p4.NativeMobile.Login.container4"
        $widgetId="p4.NativeMobile.Login.container4"
        style={StyleProperty({
            "styles": [ styles.Container, styles.spacingInnerTopLarger, styles.spacingInnerLeftMedium, styles.spacingInnerRightMedium, styles.spacingInnerBottomLarger ]
        })}
        onClick={undefined}
        content={[
            <$DataView key="p4.NativeMobile.Login.dataView2"
                $widgetId="p4.NativeMobile.Login.dataView2"
                style={StyleProperty({
                    "styles": [ styles.DataView, styles.spacingOuterTopMedium ]
                })}
                object={NanoflowObjectProperty({
                    "dataSourceId": "p4.4",
                    "editable": true,
                    "source": { "nanoflow": () => require("D:/UKTC PROGRAMMING/Mendix-Projects/MQTT-SmartHome/deployment/native/nanoflows/NativeMobile.DSS_CreateLoginContext").DSS_CreateLoginContext },
                    "argMap": {}
                })}
                content={[
                    <$TextBox key="p4.NativeMobile.Login.textBox3"
                        $widgetId="p4.NativeMobile.Login.textBox3"
                        style={StyleProperty({
                            "styles": [ styles.TextBox, styles.TextBoxHorizontal, styles.spacingOuterBottomMedium ]
                        })}
                        onEnter={undefined}
                        onLeave={undefined}
                        formOrientation={"horizontal"}
                        labelWidth={0}
                        inputValue={AttributeProperty({
                            "scope": "p4.NativeMobile.Login.dataView2",
                            "path": "",
                            "entity": "NativeMobile.Login",
                            "attribute": "Username",
                            "onChange": { "type": "doNothing", "argMap": {}, "config": {}, "disabledDuringExecution": false },
                            "validation": { "message": t([ "A valid email address is required." ]), "expression": { "expr": { "type": "function", "name": "!=", "parameters": [ { "type": "variable", "variable": "value" }, { "type": "literal", "value": null } ] }, "args": {} } },
                            "formatting": { }
                        })}
                        isPassword={false}
                        placeholder={TextProperty({
                            "value": t([
                                "Username"
                            ])
                        })}
                        label={undefined}
                        maxLength={200}
                        keyboardType={"default"}
                        onEnterKeyPress={undefined}
                        autocomplete={true}
                        autoFocus={true}
                        submitWhileEditing={false}
                        submitDelay={300}
                        accessible={false} />,
                    <$TextBox key="p4.NativeMobile.Login.textBox4"
                        $widgetId="p4.NativeMobile.Login.textBox4"
                        style={StyleProperty({
                            "styles": [ styles.TextBox, styles.TextBoxHorizontal, styles.spacingOuterBottomMedium ]
                        })}
                        onEnter={undefined}
                        onLeave={undefined}
                        formOrientation={"horizontal"}
                        labelWidth={0}
                        inputValue={AttributeProperty({
                            "scope": "p4.NativeMobile.Login.dataView2",
                            "path": "",
                            "entity": "NativeMobile.Login",
                            "attribute": "Password",
                            "onChange": { "type": "doNothing", "argMap": {}, "config": {}, "disabledDuringExecution": false },
                            "validation": { "message": t([ "A password is required." ]), "expression": { "expr": { "type": "function", "name": "!=", "parameters": [ { "type": "variable", "variable": "value" }, { "type": "literal", "value": null } ] }, "args": {} } },
                            "formatting": { }
                        })}
                        isPassword={true}
                        placeholder={TextProperty({
                            "value": t([
                                "Password"
                            ])
                        })}
                        label={undefined}
                        maxLength={200}
                        keyboardType={"default"}
                        onEnterKeyPress={undefined}
                        autocomplete={true}
                        autoFocus={false}
                        submitWhileEditing={false}
                        submitDelay={300}
                        accessible={false} />,
                    <$Text key="p4.NativeMobile.Login.text6"
                        $widgetId="p4.NativeMobile.Login.text6"
                        style={StyleProperty({
                            "styles": [ styles.Text, styles.textPrimary, styles.spacingOuterBottomMedium, styles.textSmall ]
                        })}
                        text={t([
                            ExpressionProperty({
                                "expression": { "expr": { "type": "literal", "value": "Forgot Password?" }, "args": {} }
                            })
                        ])}
                        accessible={false} />,
                    <$Button key="p4.NativeMobile.Login.actionButton2"
                        $widgetId="p4.NativeMobile.Login.actionButton2"
                        style={StyleProperty({
                            "styles": [ styles.ActionButton ]
                        })}
                        caption={t([
                            ExpressionProperty({
                                "expression": { "expr": { "type": "literal", "value": "Login" }, "args": {} }
                            })
                        ])}
                        icon={undefined}
                        onClick={ActionProperty({
                            "action": { "type": "callNanoflow", "argMap": { "Login": { "widget": "p4.NativeMobile.Login.dataView2", "source": "object" } }, "config": { "nanoflow": () => require("D:/UKTC PROGRAMMING/Mendix-Projects/MQTT-SmartHome/deployment/native/nanoflows/NativeMobile.ACT_SignInUser").ACT_SignInUser }, "disabledDuringExecution": false }
                        })}
                        accessible={false} />,
                    <$Container key="p4.NativeMobile.Login.container3"
                        $widgetId="p4.NativeMobile.Login.container3"
                        style={StyleProperty({
                            "styles": [ styles.Container, styles.flexRow, styles.justifyContentCenter, styles.alignChildrenEnd, styles.spacingInnerTopMedium, styles.spacingInnerBottomMedium ]
                        })}
                        onClick={undefined}
                        content={[
                            <$Text key="p4.NativeMobile.Login.text4"
                                $widgetId="p4.NativeMobile.Login.text4"
                                style={StyleProperty({
                                    "styles": [ styles.Text, styles.spacingOuterRightSmall, styles.textSmall, styles.textParagraph ]
                                })}
                                text={t([
                                    ExpressionProperty({
                                        "expression": { "expr": { "type": "literal", "value": "Don't have an account yet?" }, "args": {} }
                                    })
                                ])}
                                accessible={false} />,
                            <$Text key="p4.NativeMobile.Login.text5"
                                $widgetId="p4.NativeMobile.Login.text5"
                                style={StyleProperty({
                                    "styles": [ styles.Text, styles.textPrimary, styles.textSmall ]
                                })}
                                text={t([
                                    ExpressionProperty({
                                        "expression": { "expr": { "type": "literal", "value": "Sign up" }, "args": {} }
                                    })
                                ])}
                                accessible={false} />
                        ]}
                        accessible={false} />
                ]} />
        ]}
        accessible={false} />
];

export const placeholder$Header = () => null;

export const $$title = t([
    "Login"
]);

export const $$style = [ styles.Layout, styles.Page ];

export const $$parameters = [];
export const $$page = () => mainContent(placeholder$Main);

export const $$sidebar = () => sidebar(placeholder$Main);

