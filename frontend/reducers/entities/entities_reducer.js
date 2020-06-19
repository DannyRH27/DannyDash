import { combineReducers } from "redux";
import stores from './stores_reducer';
import menus from './menu_reducers';
import items from './items_reducer';
import modalItem from  './modal_item_reducer';
import cart from './cart_reducer';
import filters from './filters_reducer';
import cartStore from './cart_store_reducer';
import orders from './orders_reducer';

const entitiesReducer = combineReducers({
    stores,
    menus,
    items,
    modalItem,
    cart,
    filters,
    cartStore,
    orders
});

export default entitiesReducer;
