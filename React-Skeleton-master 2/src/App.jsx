import React from 'react';
import Articles from "./components/Articles";
import User from "./components/User";


import ThemeButton from "./components/ThemeButton";
import { useContext } from "react";
import ThemeContext from "./context/theme";
function App() {
  const {state} = useContext(ThemeContext);
  return (
      <div className={`App ${state.theme}`}>
        <header className={state.theme}>
          <div>
            <h1 className={state.theme}>React Skeleton</h1>
          </div>
            <ThemeButton/>
        </header>
        <div className="content">
          <Articles/>
          <User/>
        </div>
      </div>
  );
}

export default App;
