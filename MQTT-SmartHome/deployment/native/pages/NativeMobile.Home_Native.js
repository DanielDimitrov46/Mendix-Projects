import { createElement } from "react";
const React = { createElement };

import { ExpressionProperty } from "mendix/ExpressionProperty";
import { IconProperty } from "mendix/IconProperty";
import { StyleProperty } from "mendix/StyleProperty";

import { Animation as com_mendix_widget_native_animation_Animation } from "../widgets/com/mendix/widget/native/animation/Animation";
import { IntroScreen as com_mendix_widget_native_introscreen_IntroScreen } from "../widgets/com/mendix/widget/native/introscreen/IntroScreen";
import { Container } from "mendix/Container";
import { Text } from "mendix/Text";
import { addEnumerations, asPluginWidgets, t } from "mendix/native";

import { mainContent, sidebar } from "D:/UKTC PROGRAMMING/Mendix-Projects/MQTT-SmartHome/deployment/native/layouts/Atlas_Core.NativePhone_Default.js";

import * as styles from "../styles.js";

const { $com_mendix_widget_native_introscreen_IntroScreen, $Container, $com_mendix_widget_native_animation_Animation, $Text } = asPluginWidgets({ com_mendix_widget_native_introscreen_IntroScreen, Container, com_mendix_widget_native_animation_Animation, Text });

const placeholder$Main = () => [
    <$com_mendix_widget_native_introscreen_IntroScreen key="p0.NativeMobile.Home_Native.introScreen1"
        $widgetId="p0.NativeMobile.Home_Native.introScreen1"
        slides={[
            {
                "name": "Start",
                "content": [
                    <$Container key="p0.NativeMobile.Home_Native.container4"
                        $widgetId="p0.NativeMobile.Home_Native.container4"
                        style={StyleProperty({
                            "styles": [ styles.Container, styles.flexMain, styles.alignChildrenCenter, styles.justifyContentCenter ]
                        })}
                        onClick={undefined}
                        content={[
                            <$Container key="p0.NativeMobile.Home_Native.container3"
                                $widgetId="p0.NativeMobile.Home_Native.container3"
                                style={StyleProperty({
                                    "styles": [ styles.Container, styles.spacingOuterBottomSmaller ]
                                })}
                                onClick={undefined}
                                content={[
                                    <$com_mendix_widget_native_animation_Animation key="p0.NativeMobile.Home_Native.animation1"
                                        $widgetId="p0.NativeMobile.Home_Native.animation1"
                                        content={[
                                            <$Text key="p0.NativeMobile.Home_Native.text1"
                                                $widgetId="p0.NativeMobile.Home_Native.text1"
                                                style={StyleProperty({
                                                    "styles": [ styles.Text, styles.TextHeading1, styles.h1 ]
                                                })}
                                                text={t([
                                                    ExpressionProperty({
                                                        "expression": { "expr": { "type": "literal", "value": "Welcome!" }, "args": {} }
                                                    })
                                                ])}
                                                accessible={false} />
                                        ]}
                                        animationType={"in"}
                                        animationIn={"fadeInDownBig"}
                                        animationAttention={"none"}
                                        animationOut={"none"}
                                        duration={300}
                                        delay={0}
                                        condition={undefined}
                                        easing={"ease_in_out"}
                                        count={1}
                                        direction={"normal"}
                                        afterAnimationAction={undefined}
                                        style={StyleProperty({
                                            "styles": [ styles.com_mendix_widget_native_animation_Animation ]
                                        })} />
                                ]}
                                accessible={false} />,
                            <$Container key="p0.NativeMobile.Home_Native.container2"
                                $widgetId="p0.NativeMobile.Home_Native.container2"
                                style={StyleProperty({
                                    "styles": [ styles.Container, styles.flexRow ]
                                })}
                                onClick={undefined}
                                content={[
                                    <$com_mendix_widget_native_animation_Animation key="p0.NativeMobile.Home_Native.animation2"
                                        $widgetId="p0.NativeMobile.Home_Native.animation2"
                                        content={[
                                            <$Text key="p0.NativeMobile.Home_Native.text3"
                                                $widgetId="p0.NativeMobile.Home_Native.text3"
                                                style={StyleProperty({
                                                    "styles": [ styles.Text, styles.h1, styles.textLarge ]
                                                })}
                                                text={t([
                                                    ExpressionProperty({
                                                        "expression": { "expr": { "type": "literal", "value": "To your " }, "args": {} }
                                                    })
                                                ])}
                                                accessible={false} />
                                        ]}
                                        animationType={"in"}
                                        animationIn={"fadeIn"}
                                        animationAttention={"none"}
                                        animationOut={"none"}
                                        duration={300}
                                        delay={300}
                                        condition={undefined}
                                        easing={"ease_in_out"}
                                        count={1}
                                        direction={"normal"}
                                        afterAnimationAction={undefined}
                                        style={StyleProperty({
                                            "styles": [ styles.com_mendix_widget_native_animation_Animation ]
                                        })} />,
                                    <$com_mendix_widget_native_animation_Animation key="p0.NativeMobile.Home_Native.animation4"
                                        $widgetId="p0.NativeMobile.Home_Native.animation4"
                                        content={[
                                            <$com_mendix_widget_native_animation_Animation key="p0.NativeMobile.Home_Native.animation5"
                                                $widgetId="p0.NativeMobile.Home_Native.animation5"
                                                content={[
                                                    <$Text key="p0.NativeMobile.Home_Native.text6"
                                                        $widgetId="p0.NativeMobile.Home_Native.text6"
                                                        style={StyleProperty({
                                                            "styles": [ styles.Text, styles.h1, styles.textLarge ]
                                                        })}
                                                        text={t([
                                                            ExpressionProperty({
                                                                "expression": { "expr": { "type": "literal", "value": "native " }, "args": {} }
                                                            })
                                                        ])}
                                                        accessible={false} />
                                                ]}
                                                animationType={"attention"}
                                                animationIn={"none"}
                                                animationAttention={"tada"}
                                                animationOut={"none"}
                                                duration={1000}
                                                delay={600}
                                                condition={undefined}
                                                easing={"ease_in_out"}
                                                count={1}
                                                direction={"normal"}
                                                afterAnimationAction={undefined}
                                                style={StyleProperty({
                                                    "styles": [ styles.com_mendix_widget_native_animation_Animation ]
                                                })} />
                                        ]}
                                        animationType={"in"}
                                        animationIn={"fadeIn"}
                                        animationAttention={"none"}
                                        animationOut={"none"}
                                        duration={300}
                                        delay={300}
                                        condition={undefined}
                                        easing={"ease_in_out"}
                                        count={1}
                                        direction={"normal"}
                                        afterAnimationAction={undefined}
                                        style={StyleProperty({
                                            "styles": [ styles.com_mendix_widget_native_animation_Animation ]
                                        })} />,
                                    <$com_mendix_widget_native_animation_Animation key="p0.NativeMobile.Home_Native.animation6"
                                        $widgetId="p0.NativeMobile.Home_Native.animation6"
                                        content={[
                                            <$Text key="p0.NativeMobile.Home_Native.text5"
                                                $widgetId="p0.NativeMobile.Home_Native.text5"
                                                style={StyleProperty({
                                                    "styles": [ styles.Text, styles.h1, styles.textLarge ]
                                                })}
                                                text={t([
                                                    ExpressionProperty({
                                                        "expression": { "expr": { "type": "literal", "value": "app" }, "args": {} }
                                                    })
                                                ])}
                                                accessible={false} />
                                        ]}
                                        animationType={"in"}
                                        animationIn={"fadeIn"}
                                        animationAttention={"none"}
                                        animationOut={"none"}
                                        duration={300}
                                        delay={300}
                                        condition={undefined}
                                        easing={"ease_in_out"}
                                        count={1}
                                        direction={"normal"}
                                        afterAnimationAction={undefined}
                                        style={StyleProperty({
                                            "styles": [ styles.com_mendix_widget_native_animation_Animation ]
                                        })} />
                                ]}
                                accessible={false} />
                        ]}
                        accessible={false} />
                ]
            }
        ]}
        showMode={"fullscreen"}
        buttonPattern={"nextDone"}
        slideIndicators={"between"}
        hideIndicatorLastSlide={true}
        identifier={"introScreenExampleIdentifier"}
        skipCaption={t([
            ExpressionProperty({
                "expression": { "expr": { "type": "literal", "value": "" }, "args": {} }
            })
        ])}
        skipIcon={undefined}
        previousCaption={t([
            ExpressionProperty({
                "expression": { "expr": { "type": "literal", "value": "" }, "args": {} }
            })
        ])}
        previousIcon={undefined}
        nextCaption={t([
            ExpressionProperty({
                "expression": { "expr": { "type": "literal", "value": "" }, "args": {} }
            })
        ])}
        nextIcon={undefined}
        doneCaption={t([
            ExpressionProperty({
                "expression": { "expr": { "type": "literal", "value": "Lets go" }, "args": {} }
            })
        ])}
        doneIcon={IconProperty({
            "icon": { "type": "glyph", "iconClass": "glyphicon-triangle-right" }
        })}
        onSlideChange={undefined}
        onDone={undefined}
        onSkip={undefined}
        style={StyleProperty({
            "styles": [ styles.com_mendix_widget_native_introscreen_IntroScreen ]
        })} />,
    <$Container key="p0.NativeMobile.Home_Native.container5"
        $widgetId="p0.NativeMobile.Home_Native.container5"
        style={StyleProperty({
            "styles": [ styles.Container, styles.flexMain, styles.alignChildrenCenter, styles.justifyContentCenter, styles.spacingInnerLeftMedium, styles.spacingInnerRightMedium, styles.backgroundPrimary ]
        })}
        onClick={undefined}
        content={[
            <$Container key="p0.NativeMobile.Home_Native.container6"
                $widgetId="p0.NativeMobile.Home_Native.container6"
                style={StyleProperty({
                    "styles": [ styles.Container, styles.spacingOuterBottomSmaller ]
                })}
                onClick={undefined}
                content={[
                    <$Text key="p0.NativeMobile.Home_Native.text7"
                        $widgetId="p0.NativeMobile.Home_Native.text7"
                        style={StyleProperty({
                            "styles": [ styles.Text, styles.TextHeading1, styles.h1 ]
                        })}
                        text={t([
                            ExpressionProperty({
                                "expression": { "expr": { "type": "literal", "value": "Go make it!" }, "args": {} }
                            })
                        ])}
                        accessible={false} />
                ]}
                accessible={false} />,
            <$Container key="p0.NativeMobile.Home_Native.container7"
                $widgetId="p0.NativeMobile.Home_Native.container7"
                style={StyleProperty({
                    "styles": [ styles.Container, styles.flexRow ]
                })}
                onClick={undefined}
                content={[
                    <$Text key="p0.NativeMobile.Home_Native.text11"
                        $widgetId="p0.NativeMobile.Home_Native.text11"
                        style={StyleProperty({
                            "styles": [ styles.Text, styles.h1, styles.textLarge, styles.textCenter ]
                        })}
                        text={t([
                            ExpressionProperty({
                                "expression": { "expr": { "type": "literal", "value": "Make changes, run locally, preview." }, "args": {} }
                            })
                        ])}
                        accessible={false} />
                ]}
                accessible={false} />
        ]}
        accessible={false} />
];

export const placeholder$Header = () => null;

export const $$title = t([
    "Home"
]);

export const $$style = [ styles.Layout, styles.Page ];

export const $$parameters = [];
export const $$page = () => mainContent(placeholder$Main);

export const $$sidebar = () => sidebar(placeholder$Main);

