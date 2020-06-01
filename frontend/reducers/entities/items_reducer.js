import { RECEIVE_ITEMS } from '../../actions/item_actions'

const itemsReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_ITEMS:
            const newItems = action.payload.items;
            return Object.assign({}, state, newItems);
        default:
            return state;
    }
}

export default itemsReducer