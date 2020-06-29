import React from "react";
import { Link, withRouter } from "react-router-dom";
import { MdShoppingCart } from "react-icons/md";
import SideDrawer from "./side_drawer";
import CartDrawer from "./cart_drawer";
import SearchBar from "../search/search_bar";
import AddressBar from "../address/address_bar";

const DrawerToggleButton = () => (
  <button className="toggle-button">
    <div className="toggle-button_line"></div>
    <div className="toggle-button_line"></div>
    <div className="toggle-button_line"></div>
  </button>
);

class NavBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      user: this.props.currentUser,
      sideDrawerOpen: false,
      cartDrawerOpen: false,
    };
    this._isMounted = false;
    this.handleToggle = this.handleToggle.bind(this);
    this.handleCartToggle = this.handleCartToggle.bind(this);
    this.hideSideBar = this.hideSideBar.bind(this);
    this.hideCartSideBar = this.hideCartSideBar.bind(this);
  }

  componentDidMount() {
    const { currentUser } = this.props;
    this._isMounted = true;

    this.props.location.pathname === "/home" ? this.props.fetchStores() : null;
    currentUser ? this.props.fetchOrders() : null;
  }

  componentDidUpdate(prevProps) {
    if (this.props.location.pathname !== prevProps.location.pathname) {
      window.scrollTo(0, 0);
      this.setState({ sideDrawerOpen: false });
      this.setState({ cartDrawerOpen: false });
    }

    if (this.props.location.pathname === "/home") {
      this.props.fetchStores();
    }
  }

  componentWillUnmount() {
    this._isMounted = false;
  }

  hideSideBar() {
    this.setState({ sideDrawerOpen: false });
  }

  hideCartSideBar() {
    this.setState({ cartDrawerOpen: false });
  }

  handleToggle() {
    if (this._isMounted) {
      let value = !this.state.sideDrawerOpen;
      this.setState({
        sideDrawerOpen: value,
      });
    }
  }

  handleCartToggle() {
    if (this._isMounted) {
      let value = !this.state.cartDrawerOpen;
      this.setState({
        cartDrawerOpen: value,
      });
    }
  }

  render() {
    const {
      currentUser,
      fetchCart,
      fetchCartStore,
      cart,
      update,
      cartStore,
    } = this.props;

    const SessionButtons = currentUser ? null : (
      <ul>
        <li className="splash-signup">
          <Link to="/login">Sign In</Link>
        </li>
        <li className="splash-signup">
          <Link to="/signup">Sign Up</Link>
        </li>
      </ul>
    );
    const DrawerToggle =
      this.props.location.pathname === "/checkout" ? null : (
        <div onClick={(e) => {
          e.stopPropagation();
          e.preventDefault();
          this.handleToggle();
          }}>
          <DrawerToggleButton />
        </div>
      );
    const NavbarLogo =
      this.props.location.pathname === "/checkout" &&
      Object.values(cartStore).length !== 0 ? (
        <Link to={`/stores/${Object.values(cartStore)[0]["id"]}`}>
          <div className="navbar_logo">Back to Menu</div>
        </Link>
      ) : (
        <Link className="navbar_logo" to="/home">
          DannyDash
        </Link>
      );
    return (
      <header className="navbar">
        <nav className="navbar_navigation">
          {DrawerToggle}
          {NavbarLogo}
          <AddressBar update={update} currentUser={currentUser} />
          <div className="spacer"></div>
          <SearchBar />
          <div className="navbar_nav-items">{SessionButtons}</div>
          <div
            className="cart-toggle"
            onClick={(e) => {
              e.stopPropagation();
              e.preventDefault();
              this.handleCartToggle();
            }}
          >
            <MdShoppingCart />
          </div>
          <SideDrawer
            logout={this.props.logout}
            show={this.state.sideDrawerOpen}
            handleToggle={this.handleToggle}
            currentUser={currentUser}
            hideSideBar={this.hideSideBars}
          />
          <CartDrawer
            show={this.state.cartDrawerOpen}
            hideCartSideBar={this.hideCartSideBar}
            handleCartToggle={this.handleCartToggle}
            currentUser={currentUser}
            fetchCart={fetchCart}
            fetchCartStore={fetchCartStore}
            cart={cart}
            cartStore={cartStore}
          />
        </nav>
      </header>
    );
  }
}

export default withRouter(NavBar);