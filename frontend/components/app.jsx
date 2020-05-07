import React from "react";
import { Provider } from "react-redux";
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import LoginFormContainer from './session_form/login_form_container'
import SignupFormContainer from './session_form/signup_form_container'
import NavBarContainer from './nav_bar/nav_bar_container'
import { AuthRoute, ProtectedRoute } from '../util/route_utils'
import {SessionFormNavBar} from "./nav_bar/session_form_nav_bar";
import StoreIndexContainer from './store_index/store_index_container'
import StoreShowContainer from './store_show/store_show_container'


const App = () => (
  <div style={{ height: "100%" }}>
    <header>

        <Switch>
                <Route path="/" component={NavBarContainer} />
                <AuthRoute path="/" component={SessionFormNavBar} />
        </Switch>
    </header>
    <main style={{ marginTop: "50px" }}>
        <Route path="/home" component={StoreIndexContainer} />
        <Route path="/stores/:storeId" component={StoreShowContainer} />
    </main>
        <AuthRoute exact path="/signup" component={SignupFormContainer} />
        <AuthRoute exact path="/login" component={LoginFormContainer} />
  </div>
);

export default App;
