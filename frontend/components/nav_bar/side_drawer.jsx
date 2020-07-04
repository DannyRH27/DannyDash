import React from 'react';
import { Link, withRouter } from "react-router-dom";
import { BsX } from "react-icons/bs";
import { FiHome } from "react-icons/fi";
import {
  RiShoppingBag2Line,
  RiFileList3Line,
  RiAccountCircleLine,
  RiCloseCircleLine,
} from "react-icons/ri";


class SideDrawer extends React.Component {
  constructor(props) {
    super(props);

    this.signOut = this.signOut.bind(this);
  }

  componentDidMount() {
    window.addEventListener("click", this.props.hideSideBar);
  }

  componentWillUnmount() {
    window.removeEventListener("click", this.props.hideSideBar);
  }  

  signOut() {
    const { logout, handleToggle } = this.props;
    logout().then(() => {
      handleToggle();
      this.props.history.push("/");
    });
  }

  render() {
    const { show, handleToggle, currentUser } = this.props;
    let drawerClasses = ["side-drawer"];
    if (show) {
      drawerClasses = ["side-drawer", "open"];
    }
    const LandingPageButton = currentUser ? null : (
      <li onClick={handleToggle}>
        <Link to="/">
          <p className="side-bar-icon">
            <RiShoppingBag2Line />
          </p>
          Landing Page
        </Link>
      </li>
    );
    const UserDrawer = currentUser ? (
      <li onClick={handleToggle}>
        <Link to={`/users/${currentUser.id}`}>
          <p className="side-bar-icon">
            <RiAccountCircleLine />
          </p>
          <div>
            <span>Account</span>
            <div>
              <span className="side-bar-username">
                {currentUser.fname} {currentUser.lname}
              </span>
            </div>
          </div>
        </Link>
      </li>
    ) : null;
    const SessionDrawer = currentUser ? (
      <li onClick={this.signOut}>
        <Link to="/">
          <p className="side-bar-icon">
            <RiCloseCircleLine />
          </p>
          Sign Out
        </Link>
      </li>
    ) : (
      <li>
        <Link to="/login">
          <p className="side-bar-icon">
            <RiCloseCircleLine />
          </p>
          Sign In
        </Link>
      </li>
    );
    return (
      <nav
        onClick={(e) => e.stopPropagation()}
        className={drawerClasses.join(" ")}
      >
        <ul>
          <div className="closer-box">
            <p className="side-bar-icon" onClick={handleToggle}>
              <BsX />
            </p>
          </div>
          <li className="side-drawer-link" onClick={handleToggle}>
            <Link to="/home">
              <p className="side-bar-icon">
                <FiHome />
              </p>
              Home
            </Link>
          </li>
          {LandingPageButton}
          <li onClick={handleToggle}>
            <Link to="/orders">
              <p className="side-bar-icon">
                <RiFileList3Line />
              </p>
              Orders
            </Link>
          </li>
          {UserDrawer}
          {SessionDrawer}
        </ul>
      </nav>
    );
  }
}

export default withRouter(SideDrawer);
