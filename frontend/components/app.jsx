import React from "react";
import { Provider } from "react-redux";
import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import NavBarContainer from './nav_bar/nav_bar_container';
import { AuthRoute, ProtectedRoute } from '../util/route_utils';
import SessionFormNavBar from "./nav_bar/session_form_nav_bar";
import StoreIndexContainer from './store_index/store_index_container';
import StoreShowContainer from './store_show/store_show_container';
import SplashContainer from './splash/splash_container';
import CheckoutIndexContainer from './checkout/checkout_index_container';
import OrderShowContainer from './order/order_show_container';
import OrderIndexContainer from './order/order_index_container';
import UserShowContainer from './user/user_show_container';
import Modal from "./modal/modal";
import Footer from "./footer/footer";

const App = () => (
  <div style={{ height: "100%" }}>
    <header>
      <Switch>
        <AuthRoute
          exact
          path={["/", "/login", "/signup"]}
          component={SessionFormNavBar}
        />
        <Route path="/" component={NavBarContainer} />
      </Switch>
    </header>
    <main>
      <Switch>
        <AuthRoute exact path="/" component={SplashContainer} />
        <AuthRoute exact path="/signup" component={SignupFormContainer} />
        <AuthRoute exact path="/login" component={LoginFormContainer} />
      </Switch>
      <Modal />
      <Route path="/home" component={StoreIndexContainer} />
      <Route path="/users/:userId" component={UserShowContainer} />
      <Route path="/filters/:filter" component={StoreIndexContainer} />
      <Route path="/search/:fragment" component={StoreIndexContainer} />
      <Route path="/stores/:storeId" component={StoreShowContainer} />
      <ProtectedRoute path="/checkout" component={CheckoutIndexContainer} />
      <Switch>
        <ProtectedRoute path="/orders/:orderId" component={OrderShowContainer} />
        <Route exact path="/orders" component={OrderIndexContainer} />
      </Switch>
      <Switch>
        <Route exact path="/login" component={null} />
        <Route exact path="/signup" component={null} />
        <Route path="/" component={Footer}/>
      </Switch>
    </main>
  </div>
);

export default App;
