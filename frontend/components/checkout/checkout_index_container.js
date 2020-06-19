import { connect } from "react-redux";
import CheckoutIndex from "./checkout_index";
import { fetchCart, updateCart } from "../../actions/cart_actions";
import { fetchCartStore, fetchStores } from "../../actions/store_actions";
import { update } from "../../actions/session_actions";
import { createOrder } from "../../actions/order_actions";


const mapStateToProps = ({ entities, session }) => {
  const coordinate =  entities.cartStore.coordinate
  return {
    store: entities.cartStore,
    coordinate,
    currentUser: session.currentUser,
    cart: entities.cart,
  }
};

const mapDispatchToProps = (dispatch) => ({
  fetchCart: (cartId) => dispatch(fetchCart(cartId)),
  updateCart: (cart) => dispatch(updateCart(cart)),
  fetchCartStore: (payload) => dispatch(fetchCartStore(payload)),
  fetchStores: () => dispatch(fetchStores()),
  update: (user) => dispatch(update(user)),
  createOrder: (order) => dispatch(createOrder(order))
});

export default connect(mapStateToProps, mapDispatchToProps)(CheckoutIndex);