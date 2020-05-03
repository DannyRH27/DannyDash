import { RECEIVE_STORES, RECEIVE_STORE, RECEIVE_STORE_ERRORS } from '../actions/store_actions'

const storesReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_STORES:
            return action.stores;
        case RECEIVE_STORE:
            const newStore =  { [action.store.id]: action.store};
            return Object.assign({}, state, newStore);
        default:
            return state;
    }
}

export default storesReducer