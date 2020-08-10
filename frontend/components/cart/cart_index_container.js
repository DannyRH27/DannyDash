import { connect } from "react-redux";
import CartIndex from "./cart_index";
import { updateCart } from "../../actions/cart_actions";
import { fetchCartStore, fetchStores } from "../../actions/store_actions";


const mapStateToProps = ({entities, session}) =>{
  return {
    store: entities.cartStore,
    currentUser: session.currentUser,
    cart: entities.cart,
  }
};

const mapDispatchToProps = (dispatch) => ({
  updateCart: (cart) => dispatch(updateCart(cart)),
  fetchCartStore: (payload) => dispatch(fetchCartStore(payload)),
  fetchStores: () => dispatch(fetchStores())
});

export default connect(mapStateToProps, mapDispatchToProps)(CartIndex);