import * as StoreAPIUtil from '../util/store_api_util'
export const RECEIVE_MENUS = "RECEIVE_MENUS"
export const RECEIVE_MENU_ERRORS = "RECEIVE_MENU_ERRORS"

const receiveMenus = (payload) => ({
    type: RECEIVE_MENUS,
    payload
})

const receiveErrors = (errors) => ({
    type: RECEIVE_MENU_ERRORS,
    errors
})

export const fetchMenus = (storeId) => (dispatch) => {
    return StoreAPIUtil.fetchStore(storeId)
        .then((payload) => dispatch(receiveMenus(payload)))
        // .then((payload) => console.log(payload))
        .fail((errors) => dispatch(receiveErrors(errors.responseJSON)))
};
