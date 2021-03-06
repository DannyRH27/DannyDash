import { connect } from "react-redux";
import CheckoutDrawer from "./checkout_drawer";
import { fetchCart, updateCart } from "../../actions/cart_actions";
import { fetchCartStore, fetchStores } from "../../actions/store_actions";
import { createOrder } from "../../actions/order_actions";

const mapStateToProps = ({ entities, session }) => {
  return {
    store: entities.cartStore,
    currentUser: session.currentUser,
    cart: entities.cart,
  };
};

const mapDispatchToProps = (dispatch) => ({
  updateCart: (cart) => dispatch(updateCart(cart)),
  fetchCartStore: (payload) => dispatch(fetchCartStore(payload)),
  fetchStores: () => dispatch(fetchStores()),
  fetchCart: (id) => dispatch(fetchCart(id)),
  createOrder: (order) => dispatch(createOrder(order)),
});

export default connect(mapStateToProps, mapDispatchToProps)(CheckoutDrawer);
