import React from "react";
import { Provider } from "react-redux";
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import LoginFormContainer from './session_form/login_form_container'
import SignupFormContainer from './session_form/signup_form_container'
import NavBarContainer from './nav_bar/nav_bar_container'
import { AuthRoute, ProtectedRoute } from '../util/route_utils'


const App = () => (
  <div style={{ height: "100%" }}>
    <header>
      <Switch>
        <Route path="/" component={NavBarContainer} />
      </Switch>
    </header>
    <main style={{ marginTop: "100px" }}>
      <h1>DannyDash lives on</h1>
    </main>
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <AuthRoute exact path="/login" component={LoginFormContainer} />
  </div>
);

export default App;
