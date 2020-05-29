import React from "react";
import { Link } from "react-router-dom";
import { throttle } from 'throttle-debounce'


class SessionFormNavBar extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount() {
    this.listenForScroll()
  }

  componentWillUnmount() {
    this.throttled.cancel();
  }

  
  listenForScroll() {
    // this.throttled = throttle(200, () => check_if_scrolled());
    // document.addEventListener("scroll", this.throttled)

    // function check_if_scrolled() {
    //   let bar = document.getElementsByClassName('session_navbar')
    //   let html = document.getElementById('html')

    //   let pixelsFromTop = html.scrollTop;

    //   pixelsFromTop > 0 ? bar.classList.add("scrolled") : (
    //     bar.classList.remove("scrolled")
    //   )
    // }
    window.onscroll = function () {
      var top = window.pageYOffset || document.documentElement.scrollTop;
      if (top > 55) {
        document.getElementById("session_navbar").style.background = "black";
        document.getElementById("logo").style.color = "white";
      } else {
        document.getElementById("session_navbar").style.background = "transparent";
        document.getElementById("logo").style.color = "transparent";
      }
    };
  }


  render(){
    return (
      <header id="session_navbar">
        <nav className="navbar_navigation">
          <div className="spacer"></div>
          <h1 id="logo">DannyDash</h1>
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

export default SessionFormNavBar;



