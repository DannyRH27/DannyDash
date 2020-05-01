import React from 'react';
import { Link } from "react-router-dom";

export const SideDrawer = ({logout, show, handleToggle}) => {
    let drawerClasses = ['side-drawer'];
    if (show) {
        drawerClasses = ['side-drawer', 'open'];
    }
  return (
    <nav className={drawerClasses.join(" ")}>
      <ul>
        <li className="closer">
          <button onClick={handleToggle}>
            X
          </button>
        </li>
        <li>
          <a href="/">Home</a>
        </li>
        <li>
          <a href="/">Pickup</a>
        </li>
        <li>
          <a href="/">Orders</a>
        </li>
        <li>
          <a href="/">Account</a>
        </li>
        <li>
          <div onClick={(handleToggle, logout)}>
            <Link to="/login">Logout</Link>
          </div>
        </li>
      </ul>
    </nav>
  );};

const DrawerToggleButton = () => (
  <button className="toggle-button">
    <div className="toggle-button_line"></div>
    <div className="toggle-button_line"></div>
    <div className="toggle-button_line"></div>
  </button>
);

class NavBar extends React.Component{
    constructor(props){
        super(props)
        this.state = {
            user: this.props.currentUser,
            sideDrawerOpen: true
        }
        this.handleToggle = this.handleToggle.bind(this)
    }

    handleToggle(){
        let value = !this.state.sideDrawerOpen
          this.setState({
            sideDrawerOpen: value,
          });
    }
    render(){

        return (
          <header className="navbar">
            <nav className="navbar_navigation">
              <div onClick={this.handleToggle}>
                  <DrawerToggleButton />
              </div>
              <div className="navbar_logo">
                <a href="/">THE LOGO</a>
              </div>
              <div className="spacer"></div>
              <div className="navbar_nav-items">
                <ul>
                  {/* These will all be replaced with Links */}
                  <li>
                    <a href="/">Home</a>
                  </li>
                  <li>
                    <a href="/">Pickup</a>
                  </li>
                  <li>
                    <a href="/">Sign Up or Sign In</a>
                  </li>
                </ul>
              </div>
              <SideDrawer logout={this.props.logout} show={this.state.sideDrawerOpen} handleToggle={this.handleToggle} />
            </nav>
          </header>
        );
    }
}

export default NavBar;