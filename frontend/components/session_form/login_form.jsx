import React from 'react';
import { Link } from "react-router-dom";

class LoginForm extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            email:'',
            password:''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field){
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.login(this.state)
            .then(() => this.props.history.push('/chirps'));
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

    render(){
        return(
            <div className="login-form-container">
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <h1>Sign In</h1>
                    <p>New to Doordash?</p>
                    <Link to="/signup">Sign Up </Link>
                    <p>or continue with email</p>
                    <div className="login-form">
                        <br/>
                        <label>
                            Email:
                            <input 
                              type="text"
                              value={this.state.email}
                              onChange={this.update('email')}
                              className="login-input"
                            />
                        </label>
                        <br/>
                        <label>Password:
                            <input 
                              type="password"
                              value={this.state.password}
                              onChange={this.update('password')}
                              className="login-input"
                            />
                        </label>
                        <br/>
                        <input className='session-submit' type="submit" value='Sign In'/>
                    </div>
                </form>
            </div>
        )
    }

}
export default LoginForm;