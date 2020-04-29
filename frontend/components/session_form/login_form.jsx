import React from 'react';
import { Link } from "react-router-dom";

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      password: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demo = this.demo.bind(this)
  }

//   componentDidMount(){

//   }

  update(field) {
    return (e) =>
      this.setState({
        [field]: e.currentTarget.value,
      });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.login(this.state)
  }

  showErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>{error}</li>
        ))}
      </ul>
    );
  }

    demo() {
      const eInput = document.getElementById("email-input");
      const pInput = document.getElementById("pw-input");
      const demoEmail = "drh8@gmail.com";
      const demoPass = "cannotcode";
      let ei = 0;
      let pi = 0;
        debugger
      const typePass = () => {
        if (pi <= demoPass.length) {
          pInput.value = demoPass.substr(0, pi++);
          setTimeout(() => typePass(), 50);
        } else { setTimeout(
                   () =>
                     this.props.login({
                       email: "drh8@gmail.com",
                       password: "cannotcode",
                     }),
                   500
                 );
        }
      };

      const typeEmail = () => {
        if (ei <= demoEmail.length) {
          eInput.value = demoEmail.substr(0, ei++);
          setTimeout(() => typeEmail(), 75);
        }else {
            typePass()
        }
      };

      typeEmail();
      
    }

  render() {
    return (
      <div className="login-form-container">
        <div className="login-form-box">
          <div className="login-form-card">
            <span className="header">Sign In</span>
            <div className="session-form-header">
              <p className="session-form-context">New to Doordash? &nbsp;</p>
              <Link id="session-form-link" to="/signup">
                Sign Up{" "}
              </Link>
            </div>
            <div
              className="fb-login-button"
              data-size="large"
              data-button-type="continue_with"
              data-layout="default"
              data-auto-logout-link="false"
              data-use-continue-as="false"
              data-width=""
            ></div>
            <p>or continue with email</p>
            <form onSubmit={this.handleSubmit} className="login-form">
              <label>
                Email:
                <input
                  id="email-input"
                  type="text"
                  placeholder="Enter email"
                  value={this.state.email}
                  onChange={this.update("email")}
                />
              </label>
              <br />
              <label>
                Password:
                <input
                  id="pw-input"
                  type="password"
                  placeholder="Enter password"
                  value={this.state.password}
                  onChange={this.update("password")}
                />
              </label>
              <br />
              <input className="session-submit" type="submit" value="Sign In" />
            </form>
            <button onClick={this.demo}>Demo Login</button>
          </div>
        </div>
      </div>
    );
  }
}
export default LoginForm;