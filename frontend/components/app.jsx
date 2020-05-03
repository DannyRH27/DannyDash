import React from "react";
import { Provider } from "react-redux";
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import LoginFormContainer from './session_form/login_form_container'
import SignupFormContainer from './session_form/signup_form_container'
import NavBarContainer from './nav_bar/nav_bar_container'
import { AuthRoute, ProtectedRoute } from '../util/route_utils'
import {SessionFormNavBar} from "./nav_bar/session_form_nav_bar";
import StoreIndexContainer from './store_index/store_index_container'


const App = () => (
  <div style={{ height: "100%" }}>
    <header>
        <ProtectedRoute path="/" component={NavBarContainer} />
        <AuthRoute path="/" component={SessionFormNavBar} />
    </header>
    <main style={{ marginTop: "50px" }}>
    <ProtectedRoute path="/home" component={StoreIndexContainer} />
    </main>
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <AuthRoute exact path="/login" component={LoginFormContainer} />
  </div>
);

export default App;
