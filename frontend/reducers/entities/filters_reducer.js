import { RECEIVE_FILTERS } from "../../actions/filter_actions";

const filtersReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_FILTERS:
      return action.filters
    default:
      return state;
  }
}

export default filtersReducer;