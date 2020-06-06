import { RECEIVE_CART } from "../../actions/cart_actions";

const cartReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CART:
      return action.cart
    default:
      return state;
  }
}

export default cartReducer;