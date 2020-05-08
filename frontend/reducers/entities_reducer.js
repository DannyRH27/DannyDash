import { combineReducers } from "redux";
import stores from './stores_reducer';
import menus from './menu_reducers'
import items from './items_reducer'

const entitiesReducer = combineReducers({
    stores,
    menus,
    items
});

export default entitiesReducer;
