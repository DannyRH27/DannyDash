import { connect } from "react-redux";
import { logout } from "../../actions/session_actions";
import { fetchStores, fetchCartStore } from "../../actions/store_actions";
import { fetchCart, updateCart } from "../../actions/cart_actions";
import NavBar from './nav_bar';


const mapStateToProps = ({entities, session}) =>{
    return {
        currentUser: session.currentUser,
        toggleSideBar: false,
        cart: entities.cart
    }
};

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  fetchCart: (cartId) => dispatch(fetchCart(cartId)),
  fetchStores: () => dispatch(fetchStores()),
  fetchCartStore: (storeId) => dispatch(fetchCartStore(storeId))
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);