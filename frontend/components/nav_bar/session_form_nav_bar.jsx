import React from "react";
import { Link, withRouter} from "react-router-dom";
import { throttle } from 'throttle-debounce'


class SessionFormNavBar extends React.Component {
  constructor(props){
    super(props)
    this.handleScroll = this.handleScroll.bind(this)
  }

  componentDidMount() {
    if (this.props.location.pathname === "/login" || this.props.location.pathname === "/signup"){
      var bar = document.getElementById("session_navbar");
      var logo = document.getElementById("logo");
      bar.style.background = "black";
      logo.style.color = "white";
    } else {
      this.listenForScroll();
    }
  }
  
  componentDidUpdate(){
    this.listenForScroll();
    var bar = document.getElementById("session_navbar");
    var logo = document.getElementById("logo");
    if (
      this.props.location.pathname === "/login" ||
      this.props.location.pathname === "/signup"
    ) {
      bar.style.background = "black";
      logo.style.color = "white";
    } else {
      bar.style.background = "transparent";
      logo.style.color = "transparent";
    }
  }
  componentWillUnmount(){
     window.removeEventListener("scroll", this.handleScroll);
  }

  testFunction() {
    console.log("hello")
  }

  handleScroll() {
    var bar = document.getElementById("session_navbar");
    var logo = document.getElementById("logo");
    var top = window.pageYOffset || document.documentElement.scrollTop;
    if (top > 55) {
      bar.style.background = "black";
      logo.style.color = "white";
    } else {
      bar.style.background = "transparent";
      logo.style.color = "transparent";
    }
  }

  listenForScroll() {
      var path = this.props.location.pathname
      if (path === "/"){
        window.addEventListener('scroll', this.handleScroll);
      } else {
        window.removeEventListener('scroll', this.handleScroll);
      }

  }


  render(){
    return (
      <header id="session_navbar">
        <nav className="navbar_navigation">
          <div className="spacer"></div>
          <Link id="logo" to="/">DannyDash</Link>
          <div className="session_navbar_nav-items">
            <ul>
              <li className="splash-signup">
                <Link to="/login">Sign In</Link>
              </li>
              <li className="splash-signup">
                <Link to="/signup">Sign Up</Link>
              </li>
            </ul>
          </div>
        </nav>
      </header>
    );
  }
}

export default withRouter(SessionFormNavBar);



