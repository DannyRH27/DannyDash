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
      const demoEmail = "demo@user.com";
      const demoPass = "123456";
      let ei = 0;
      let pi = 0;

      const typePass = () => {
        if (pi <= demoPass.length) {
          pInput.value = demoPass.substr(0, pi++);
          setTimeout(() => typePass(), 50);
        } else {
          setTimeout(
            () =>
              this.props.login({
                email: "demo@user.com",
                password: "123456",
              }),
            200
          );
        }
      };

      const typeEmail = () => {
        if (ei <= demoEmail.length) {
          eInput.value = demoEmail.substr(0, ei++);
          setTimeout(() => typeEmail(), 75);
        } else typePass();
      };

      typeEmail();
    }

  render() {
    return (
      <div className="login-form-container">
        <form onSubmit={this.handleSubmit} className="login-form-box">
          <h1>Sign In</h1>
          <p>New to Doordash?</p>
          <Link to="/signup">Sign Up </Link>
          <p>or continue with email</p>
          <div className="login-form">
            <br />
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
            <button onClick={this.demo}>Demo Login</button>
          </div>
        </form>
      </div>
    );
  }
}
export default LoginForm;