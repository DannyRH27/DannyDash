import { connect } from "react-redux";
import CartIndex from "./cart_index";
import { fetchCart, updateCart } from "../../actions/cart_actions";
import { fetchStores } from "../../actions/store_actions";


const mapStateToProps = ({entities, session}) =>{
  return {
    stores: entities.stores,
    currentUser: session.currentUser,
    cart: entities.cart,
  }
};

const mapDispatchToProps = (dispatch) => ({
  updateCart: (cart) => dispatch(updateCart(cart)),
  fetchStores: () => dispatch(fetchStores())
});

export default connect(mapStateToProps, mapDispatchToProps)(CartIndex);