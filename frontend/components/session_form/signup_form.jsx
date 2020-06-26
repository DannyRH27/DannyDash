import React from 'react';
import { Link } from "react-router-dom";
import { FaFacebookSquare } from "react-icons/fa";

class SignupForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            fname:'',
            lname:'',
            phone_number:'',
            email: '',
            password: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentDidMount(){
      window.scrollTo(0, 0);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.signup(user)
            .then(()=> this.props.history.push('/home'))
    }

    showErrors() {
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    }

    render() {
        const { errors, clearErrors } = this.props

        const SessionErrors = errors[0] ? (<div className='session-errors'> {errors[0]} </div>) : null;
        return (
            <div className="session-form-container">
                <div className="session-form-box">
                    <div className="session-form-card">
                        <span className="header">Sign Up</span>
                        <div className="session-form-header">
                            <p className="session-form-context">
                                Already have an account? &nbsp;
                            </p>
                            <p onClick={clearErrors}>
                                <Link id="session-form-link" to="/login">
                                    Sign In
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
                            <div className='user-name'>
                                <label className='fname'>
                                    <span>First Name</span>
                                    <br />
                                    <input
                                        className="login-input"
                                        type="text"
                                        value={this.state.fname}
                                        onChange={this.update("fname")}
                                    />
                                </label>
                                <br />
                                <br />
                                <label>
                                    <span>Last Name</span>
                                    <br />
                                    <input
                                        className="login-input"
                                        type="text"
                                        value={this.state.lname}
                                        onChange={this.update("lname")}
                                    />
                                </label>
                            </div>
                            <br />
                            <label>
                                <span>Email</span>
                                <br />
                                <input
                                    className="login-input"
                                    type="email"
                                    value={this.state.email}
                                    onChange={this.update("email")}
                                />
                            </label>
                            <br />
                            <br />
                            <label>
                                <span>Mobile Number</span>
                                <br />
                                <input
                                    className="login-input"
                                    type="tel"
                                    placeholder='619-282-9384'
                                    value={this.state.phone_number}
                                    onChange={this.update("phone_number")}
                                    pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
                                    title="XXX-XXX-XXXX"
                                />
                            </label>
                            <br />
                            <br />
                            <label>
                                <span>Password</span>
                                <br />
                                <input
                                    className="login-input"
                                    type="password"
                                    value={this.state.password}
                                    onChange={this.update("password")}
                                />
                            </label>
                            <br />
                            <br />
                            <input
                                className="session-submit"
                                type="submit"
                                value="Sign Up"
                            />
                        </form>
                    </div>
                </div>
            </div>
        );
    }

}
export default SignupForm;

