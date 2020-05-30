import React from "react";
import { Link } from "react-router-dom";
import SideDrawer from "./side_drawer"

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
    };
    this._isMounted = false;
    this.handleToggle = this.handleToggle.bind(this);
  }

  handleToggle() {
    if (this._isMounted) {
      let value = !this.state.sideDrawerOpen;
      this.setState({
        sideDrawerOpen: value,
      });
    }
  }
  componentDidMount() {
    this._isMounted = true;
  }

  componentDidUpdate(prevProps) {
    if (this.props.location.pathname !== prevProps.location.pathname) {
      window.scrollTo(0, 0);
    }
  }

  componentWillUnmount() {
    this._isMounted = false;
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
          <div id="toggle" onClick={this.handleToggle}>
            <DrawerToggleButton />
          </div>
          <Link className="navbar_logo" to="/">
            DannyDash
          </Link>
          <div className="spacer"></div>
          <div className="navbar_nav-items">{SessionButtons}</div>
          <SideDrawer
            logout={this.props.logout}
            show={this.state.sideDrawerOpen}
            handleToggle={this.handleToggle}
            currentUser={this.props.currentUser}
          />
        </nav>
      </header>
    );
  }
}

export default NavBar;