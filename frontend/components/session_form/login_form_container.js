import { connect } from "react-redux";
import { login, receiveErrors } from "../../actions/session_actions";
import LoginForm from './login_form'

const mapStateToProps = ({errors}) =>({
    errors: errors.session
});

const mapDispatchToProps = dispatch =>({
    login: (user) => dispatch(login(user)),
    clearErrors: () => dispatch(receiveErrors([]))
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginForm);

