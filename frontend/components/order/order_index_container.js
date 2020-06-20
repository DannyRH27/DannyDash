import { connect } from "react-redux";
import OrderIndex from "./order_index";
import { fetchOrder, fetchOrders } from "../../actions/order_actions";

const mapStateToProps = ({ entities, session }) => {
  return {
    currentUser: session.currentUser,
    orders: entities.orders,
  };
};

const mapDispatchToProps = (dispatch) => ({
  fetchOrder: (orderId) => dispatch(fetchOrder(orderId)),
  fetchStores: () => dispatch(fetchStores()),
  fetchOrder: () => dispatch(fetchOrders())
});

export default connect(mapStateToProps, mapDispatchToProps)(OrderIndex);
