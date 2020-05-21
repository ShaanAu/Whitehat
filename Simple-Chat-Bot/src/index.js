import React from "react";
import { render } from "react-dom";
import styled from "styled-components";
import ChatBot from "react-simple-chatbot";
import { script } from "./chatbot";
import { stepifyScript } from "./utils";

const Main = styled.div`
  font-family: sans-serif;
  display: flex;
  flex-direction: column;
  justify-content: center;
`;

const App = () => (
  <Main>
    <ChatBot
      bubbleOptionStyle={{ backgroundColor: "white", color: "black" }}
      steps={stepifyScript(script)}
    />
  </Main>
);

render(<App />, document.getElementById("root"));
