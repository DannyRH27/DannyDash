import { connect } from "react-redux";
import { signup, receiveErrors } from "../../actions/session_actions";
import SignupForm from './signup_form'

const mapStateToProps = ({ errors }) => ({
    errors: errors.session
});

const mapDispatchToProps = dispatch => ({
    signup: (user) => dispatch(signup(user)),
    clearErrors: () => dispatch(receiveErrors([]))
});

export default connect(mapStateToProps, mapDispatchToProps)(SignupForm);
