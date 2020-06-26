import React from "react";
import { FaGithubAlt, FaLinkedin } from "react-icons/fa";

function Footer (props) {
  return (
    <div className="footer-container">
      <div className="footer-details">
        <img
          src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/King_Hamburger2.jpg"
          alt=""
        />
        <a href="https://github.com/DannyRH27" target="_blank">
          <FaGithubAlt />
        </a>
        <a href="https://www.linkedin.com/in/dannyrhuang/" target="_blank">
          <FaLinkedin />
        </a>
      </div>
    </div>
  );
}

export default Footer;