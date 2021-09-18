import React from "react";
import { Switch, Route, Link } from "react-router-dom";

import Home from "./pages/Home";
import Nation from "./pages/Nation";
import Ingredient from "./pages/Ingredient";
import Drink from "./pages/Drink";

function App() {
  return (
    <div className="App">
      <Switch>
      <Route path="/listDrink">
          <listDrink />
        </Route>
      <Route path="/listFood">
          <listFood />
        </Route>
      <Route path="/menuFood">
          <menuFood />
        </Route>
      <Route path="/menuDrink">
          <menuDrink />
        </Route>
      <Route path="/Drink">
          <Drink />
        </Route>
        <Route path="/Ingredient">
          <Ingredient />
        </Route>
        <Route path="/nation">
          <Nation />
        </Route>
        <Route path="/">
          <Home />
        </Route>
      </Switch>
    </div>
  );
}

export default App;
