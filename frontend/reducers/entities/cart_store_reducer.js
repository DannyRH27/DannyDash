import { RECEIVE_CART_STORE} from '../../actions/store_actions'

const cartStoreReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CART_STORE:
      const newStore = {
        [action.payload.id]:
        {
          ['id']: action.payload.id,
          ['name']: action.payload.name,
          ['address']: action.payload.address,
          ['hours']: action.payload.hours,
          ['photoUrls']: action.payload.photoUrls,
          ['filters']: action.payload.filters
        }
      };
      return Object.assign({}, state, newStore);
    default:
      return state;
  }
}

export default cartStoreReducer;