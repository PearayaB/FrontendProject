import React from 'react';
import { Switch, Route, Link } from 'react-router-dom'

import Home from './pages/Home';
import Nation from './pages/Nation';

function App() {
  return (
    <div className="App">
      <Switch>
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
