import { createElement, ReactElement, useRef, useEffect, useState } from "react";
import { CharacterCounterContainerProps } from "../typings/CharacterCounterProps";
import "./ui/CharacterCounter.css";

export function CharacterCounter({
    content,
    characterLimit
}: CharacterCounterContainerProps & { characterLimit: number }): ReactElement {
    const [currentInput, setCurrentInput] = useState<string>("");
    const myContainerRef = useRef<HTMLDivElement>(null);

    // Check if content is null or undefined
    if (!content) {
        return <div>No content provided</div>;
    }

    const onInputChange = (e: Event): void => {
        if (e) {
            setCurrentInput((e.target as HTMLInputElement).value);
        }
    };

    useEffect(() => {
        let eventListener: Element;
        if (myContainerRef.current) {
            const inputElements = myContainerRef.current.querySelectorAll("input");
            if (inputElements.length) {
                eventListener = inputElements[0];
                eventListener.addEventListener("input", onInputChange);
            }
        }
        return () => {
            eventListener.removeEventListener("input", onInputChange);
        };
    }, [myContainerRef]);
    const charLimitStyles = () => {
        const charLength = currentInput.length;
        const charLimit = characterLimit ? characterLimit : 0;
        if (charLength > charLimit * 0.8) {
            return "character_counter_80_percent";
        } else if (charLength > charLimit * 0.6) {
            return "character_counter_60_percent";
        }
        return "";
    };
    return (
        <div className={`${charLimitStyles()}`}>
            <div ref={myContainerRef}>{content}</div>
            <span>
                {currentInput.length} / {characterLimit}
            </span>
        </div>
    );
}
