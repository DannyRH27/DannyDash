import { RECEIVE_STORES, RECEIVE_STORE } from '../../actions/store_actions'

const storesReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_STORES:
            return action.stores;
        case RECEIVE_STORE:
            const newStore = {
                [action.payload.id]: 
                    {
                        ['id']:action.payload.id,
                        ['name']: action.payload.name, 
                        ['address']:action.payload.address,
                        ['hours']:action.payload.hours,
                        ['photoUrls']:action.payload.photoUrls
                    }
            };
            return Object.assign({}, state, newStore);
        default:
            return state;
    }
}

export default storesReducer