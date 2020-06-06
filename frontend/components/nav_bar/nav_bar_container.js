import { connect } from "react-redux";
import { logout } from "../../actions/session_actions";
import { fetchCart, updateCart } from "../../actions/cart_actions";
import NavBar from './nav_bar';


const mapStateToProps = ({session}) =>{
    return {
        currentUser: session.currentUser,
        toggleSideBar: false
    }
};

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  fetchCart: (cartId) => dispatch(fetchCart(cartId))
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);