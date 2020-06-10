import * as StoreAPIUtil from "../util/store_api_util";
export const RECEIVE_ITEMS = "RECEIVE_ITEMS";
export const RECEIVE_ITEM_ERRORS = "RECEIVE_ITEM_ERRORS";

const receiveItems = (payload) => {
    return {
    type: RECEIVE_ITEMS,
    payload
  }
}


const receiveErrors = (errors) => ({
    type: RECEIVE_ITEMS_ERRORS,
    errors
})

export const fetchItems = (storeId) => (dispatch) => {
    return StoreAPIUtil.fetchStore(storeId)
        .then((payload) => dispatch(receiveItems(payload)))
        .fail((errors) => dispatch(receiveErrors(errors.responseJSON)))
};
