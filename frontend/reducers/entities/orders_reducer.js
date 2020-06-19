import { RECEIVE_ORDERS, RECEIVE_ORDER } from '../../actions/order_actions';

const ordersReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_ORDERS:
            return action.orders;
        case RECEIVE_ORDER:
            const newOrder = {
                [action.payload.order.id]: action.payload.order
            };
            return Object.assign({}, state, newOrder);
        default:
            return state;
    }
}

export default ordersReducer;