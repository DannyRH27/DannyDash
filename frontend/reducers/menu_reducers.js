import { RECEIVE_MENUS } from '../actions/menu_actions'

const menusReducer = (state = {}, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_MENUS:
            const newMenus = action.payload.menus
            return Object.assign({}, state, newMenus);
        default:
            return state;
    };
};

export default menusReducer;