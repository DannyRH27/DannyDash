import React from 'react';
import { Link } from "react-router-dom";

class SignupForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            fname:'',
            lname:'',
            country:'+1(US)',
            phone_number:'',
            email: '',
            password: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
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
          .then(() => this.props.history.push('/'));
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
        return (
            <div className="signup-form-container">
                <form onSubmit={this.handleSubmit} className="signup-form-box">
                    <h1>Sign Up</h1>
                    <p>Already have an account?</p>
                    <Link to="/login">Sign In </Link>
                    <p>or continue with email</p>
                    <div className="signup-form">
                        <br />
                        <label>
                            First Name:
                            <input
                                type="text"
                                value={this.state.fname}
                                onChange={this.update('fname')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <label>
                            Last Name:
                            <input
                                type="text"
                                value={this.state.lname}
                                onChange={this.update('lname')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <label>
                            Email:
                            <input
                                type="email"
                                value={this.state.email}
                                onChange={this.update('email')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <label>
                            Country:
                            <input
                                type="text"
                                value={this.state.country}
                                onChange={this.update('country')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <label>
                            Mobile Number:
                            <input
                                type="text"
                                value={this.state.phone_number}
                                onChange={this.update('phone_number')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <label>Password:
                            <input
                                type="password"
                                value={this.state.password}
                                onChange={this.update('password')}
                                className="login-input"
                            />
                        </label>
                        <br />
                        <input className='session-submit' type="submit" value='Sign Up' />
                    </div>
                </form>
            </div>
        )
    }

}
export default SignupForm;