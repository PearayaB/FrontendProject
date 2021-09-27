import React from "react";
import { Switch, Route, Link } from "react-router-dom";

import Home from "./pages/Home";
import Nation from "./pages/Nation";
import Ingredient from "./pages/Ingredient";
import Drink from "./pages/Drink";
import MenuFood from "./pages/menuFood";
import ListFood from "./pages/listFood";
import ListDrink from "./pages/listDrink"
import MenuDrink from "./pages/menuDrink";
import Create from "./pages/Create";

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
        
        <Route path="/Create">
          <Create />
        </Route>
        <Route path="/">
          <Home />
        </Route>
      </Switch>
    </div>
  );
}

export default App;
