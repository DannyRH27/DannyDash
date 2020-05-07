import React from 'react';
import { Link } from "react-router-dom";
import {BsX} from  'react-icons/bs';
import {FiHome} from 'react-icons/fi'
import {
  RiShoppingBag2Line,
  RiFileList3Line,
  RiAccountCircleLine,
  RiCloseCircleLine
} from "react-icons/ri";

export const SideDrawer = ({logout, show, handleToggle}) => {
    let drawerClasses = ['side-drawer'];
    if (show) {
        drawerClasses = ['side-drawer', 'open'];
    }

    const signOut = (logout,handleToggle)=> {
        logout();
        handleToggle();
    }
  return (
      <nav className={drawerClasses.join(" ")}>
          <ul>
              <div className="closer-box">
                  <p className="side-bar-icon" onClick={handleToggle}>
                      <BsX />
                  </p>
              </div>
              <li className="side-drawer-link" onClick={handleToggle}>
                  <p className="side-bar-icon">
                      <FiHome />
                  </p>
                  <Link to="/login">Home</Link>
              </li >
              <li onClick={handleToggle}>
                  <p className="side-bar-icon">
                      <RiShoppingBag2Line />
                  </p>
                  <Link to="/login">Pickup</Link>
              </li>
              <li onClick={handleToggle}>
                  <p className="side-bar-icon">
                      <RiFileList3Line />
                  </p>
                  <Link to="/login">Orders</Link>
              </li>
              <li onClick={handleToggle}>
                  <p className="side-bar-icon">
                      <RiAccountCircleLine />
                  </p>
                  <Link to="/login">Account</Link>
              </li >
              <li onClick={logout}>
                  <p className="side-bar-icon">
                      <RiCloseCircleLine />
                  </p>
                  <Link to="/login">Sign Out</Link>
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
            sideDrawerOpen: false
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
              {/* <div className="navbar_logo"> */}
              <a className="navbar_logo" href="/">
                THE LOGO
              </a>
              {/* </div> */}
              <div className="spacer"></div>
              <div className="navbar_nav-items">
                <ul>
                  {/* These will all be replaced with Links */}
                  <li>
                    <Link to="/login">Logout</Link>
                  </li>
                </ul>
              </div>
              <SideDrawer
                logout={this.props.logout}
                show={this.state.sideDrawerOpen}
                handleToggle={this.handleToggle}
              />
            </nav>
          </header>
        );
    }
}

export default NavBar;