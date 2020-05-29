import React from "react";
import { Link } from "react-router-dom";


export const SessionFormNavBar = () => (
         <header className="session_navbar">
           <nav className="navbar_navigation">
             <div className="spacer"></div>
             <div className="session_navbar_nav-items">
               <ul>
                 <li>
                   <Link to="/login">Sign In</Link>
                 </li>
                 <li className='splash-signup'>
                   <Link to="/signup">Sign Up</Link>
                 </li>
               </ul>
             </div>
           </nav>
         </header>
       );



