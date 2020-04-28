import React from 'react';
import { Link } from "react-router-dom";

class NavBar extends React.Component{
    constructor(props){
        super(props)
        this.state = this.props.currentUser
    }

    render(){
        return(
            <header>
                <nav>
                    <div></div>
                    <div><a href="/">THE LOGO</a></div>
                    <div>
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
                </nav>
            </header>
        )
    }
}

export default NavBar;