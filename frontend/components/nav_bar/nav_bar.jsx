import React from "react";
import { Link } from "react-router-dom";
import { MdShoppingCart } from "react-icons/md";
import SideDrawer from "./side_drawer";
import CartDrawer from "./cart_drawer";

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
  }

  componentDidMount() {
    this._isMounted = true;
  }

  componentDidUpdate(prevProps) {
    if (this.props.location.pathname !== prevProps.location.pathname) {
      window.scrollTo(0, 0);
      this.setState({sideDrawerOpen: false})
      this.setState({cartDrawerOpen: false})
    }
  }

  componentWillUnmount() {
    this._isMounted = false;
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
    const { currentUser } = this.props;
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
    return (
      <header className="navbar">
        <nav className="navbar_navigation">
          <div onClick={this.handleToggle}>
            <DrawerToggleButton />
          </div>
          <Link className="navbar_logo" to="/">
            DannyDash
          </Link>
          <div className="spacer"></div>
          <div className="navbar_nav-items">{SessionButtons}
          </div>
          <div onClick={this.handleCartToggle} className="cart-toggle">
            <MdShoppingCart />
          </div>
          <SideDrawer
            logout={this.props.logout}
            show={this.state.sideDrawerOpen}
            handleToggle={this.handleToggle}
            currentUser={this.props.currentUser}
          />
          <CartDrawer
            show={this.state.cartDrawerOpen}
            handleCartToggle={this.handleCartToggle}
            currentUser={this.props.currentUser}
          />
        </nav>
      </header>
    );
  }
}

export default NavBar;