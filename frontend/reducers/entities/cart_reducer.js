import { RECEIVE_CART } from "../../actions/cart_actions";
import { LOGOUT_CURRENT_USER } from "../../actions/session_actions";
const cartReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CART:
      return action.cart
    case LOGOUT_CURRENT_USER:
      return {}
    default:
      return state;
  }
}

export default cartReducer;