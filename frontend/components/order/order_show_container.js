import { connect } from "react-redux";
import OrderShow from "./order_show";
import { fetchCart, updateCart } from "../../actions/cart_actions";
import { fetchCartStore, fetchStores } from "../../actions/store_actions";
import { fetchOrder } from "../../actions/order_actions";


const mapStateToProps = ({ entities, session }) => {
  return {
    currentUser: session.currentUser,
    orders: entities.orders
  };
};

const mapDispatchToProps = (dispatch) => ({
  fetchOrder:(orderId) => dispatch(fetchOrder(orderId)),
  fetchStores: () => dispatch(fetchStores()),
});

export default connect(mapStateToProps, mapDispatchToProps)(OrderShow);
