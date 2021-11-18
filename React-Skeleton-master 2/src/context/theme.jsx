import React from 'react';
import { createContext, useState } from "react";

const ThemeContext = createContext({
    state: {theme : 'light'},
    action: {
        setTheme: () => {}
    }
});

const ThemeProvider = ({children}) => {
    const [theme, setTheme] = useState('light');

    const value = {
        state: {theme},
        actions: {setTheme}
    };
    return (
        <ThemeContext.Provider value={value}> {children} </ThemeContext.Provider>
    )
}

const {Consumer : ThemeConsumer} = ThemeContext;
export {ThemeProvider, ThemeConsumer};

export default ThemeContext;