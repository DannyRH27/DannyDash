import React from 'react';
import { Link, withRouter } from "react-router-dom";
import { FaFacebookSquare} from "react-icons/fa";

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

    // componentWillUnmount() {
    //     this.props.clearErrors();
    // }

    update(field) {
        return (e) =>
        this.setState({
            [field]: e.currentTarget.value,
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.login(this.state)
        .then(() => {
          this.props.history.goBack();
        }
      )
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

      
      const typePass = () => {
        if (pi <= demoPass.length) {
          pInput.value = demoPass.substr(0, pi++);
          setTimeout(() => typePass(), 50);
        } else { setTimeout(
                   () =>
                     this.props.login({
                       email: "drh8@gmail.com",
                       password: "cannotcode",
                     }).then(()=> {
                       this.props.history.goBack();
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

        const {errors, clearErrors} = this.props

        const SessionErrors = errors[0] ? (<div className='session-errors'> {errors[0]} </div>) : null;
        return (
        <div className="session-form-container">
            <div className="session-form-box">
                <div className="session-form-card">
                    <span className="header">Sign In</span>
                    <div className="session-form-header">
                        <p className="session-form-context">New to Doordash? &nbsp;</p>
                        <p onClick={clearErrors}>
                            <Link id="session-form-link" to="/signup">
                                Sign Up
                            </Link>
                        </p>
                    </div>
                    <a className="fb-input session-submit" href="/users/auth/facebook">
                        <FaFacebookSquare className="fb-logo" /> &nbsp;Continue with Facebook
                    </a>
                    <br />
                    <div className="header-divider-box">
                        <span className="header-divider">or continue with email</span>
                    </div>
                        {SessionErrors}
                    <form onSubmit={this.handleSubmit}>
                        <label>
                            <span>Email</span>
                            <br />
                            <input
                                className="login-input"
                                id="email-input"
                                type="text"
                                value={this.state.email}
                                onChange={this.update("email")}
                            />
                            </label>
                            <br />
                            <br />
                            <label>
                                <span>Password</span>
                                <br />
                                <input
                                className="login-input"
                                id="pw-input"
                                type="password"
                                value={this.state.password}
                                onChange={this.update("password")}
                                />
                            </label>
                            <br />
                            <br />
                            <input className="session-submit" type="submit" value="Sign In" />
                        </form>
                        <br />
                        <button className="session-submit" onClick={this.demo}>
                            Demo Login
                        </button>
                </div>
            </div>
        </div>
        );
    }
}
export default withRouter(LoginForm);