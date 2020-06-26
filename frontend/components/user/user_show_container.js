import { connect } from "react-redux";
import { fetchCurrentUser } from "../../actions/session_actions";
import { update } from "../../actions/session_actions";
import UserShow from "./user_show";

const mapStateToProps = (state, { match }) => {
  return {
    currentUser: state.session.currentUser,
    errors: state.errors.session
  };
};

const mapDispatchToProps = (dispatch) => ({
  fetchCurrentUser: () => dispatch(fetchCurrentUser()),
  update: (user) => dispatch(update(user)),
  clearErrors: () => dispatch(receiveErrors([])),
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);
