import React from "react";
import { Switch, Route, Link } from "react-router-dom";

import Home from "./pages/Home";
import Nation from "./pages/Nation";
import Ingredient from "./pages/Ingredient";
import Drink from "./pages/Drink";
import MenuFood from "./pages/menuFood";
import ListFood from "./pages/ListFood";
import ListDrink from "./pages/ListDrink"
import MenuDrink from "./pages/menuDrink";


function App() {
  return (
    <div className="App">
      <Switch>
        <Route path="/ListDrink">
          <ListDrink />
        </Route>
        <Route path="/menuDrink">
          <MenuDrink />
        </Route>
        <Route path="/ListFood">
          <ListFood />
        </Route>
        <Route path="/MenuFood">
          <MenuFood />
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
