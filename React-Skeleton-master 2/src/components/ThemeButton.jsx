import React, { useContext } from 'react';
import ThemeContext, { ThemeConsumer } from '../context/theme';

const ThemeButton = () => {
    const {state, actions} = useContext(ThemeContext);

    const changeTheme = () => {
        const toggleWrap = document.querySelector(".toggle-btn-wrap");
        const toggleBtn = document.querySelector(".toggle-btn");
        if (state.theme === 'light') {
            actions.setTheme('dark');
        }
        else actions.setTheme('light');
        toggleWrap.classList.toggle('dark');
        toggleBtn.classList.toggle('dark');
    }

    return (
        <div className="toggle-btn-wrap" onClick={changeTheme}>
            <div className="toggle-btn">
            </div>
        </div>  
    );
}

export default ThemeButton;