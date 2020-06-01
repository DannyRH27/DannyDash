import { RECEIVE_MODAL_ITEM } from "../../actions/modal_item_actions";

const modalItemReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_MODAL_ITEM:
      const newItem = action.item;
      return Object.assign({}, newItem);
    default:
      return state;
  }
};

export default modalItemReducer;
