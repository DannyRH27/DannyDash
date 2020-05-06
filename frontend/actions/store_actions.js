import * as StoreAPIUtil from '../util/store_api_util'

export const RECEIVE_STORES = "RECEIVE_STORES"
export const RECEIVE_STORE = 'RECEIVE_STORE'
export const RECEIVE_STORE_ERRORS = "RECEIVE_STORE_ERRORS"

const receiveStores = (stores) => ({
    type: RECEIVE_STORES,
    stores
})

const receiveStore = (payload) => ({
    type: RECEIVE_STORE,
    payload
});


const receiveErrors = (errors) => ({
    type: RECEIVE_STORE_ERRORS,
    errors
})

export const fetchStores = () => (dispatch) => {
    return StoreAPIUtil.fetchStores()
        .then((stores) => dispatch(receiveStores(stores)))
        .fail((errors) => dispatch(receiveErrors(errors.responseJSON)))
};

export const fetchStore = (storeId) => (dispatch) => {
    return StoreAPIUtil.fetchStore(storeId)
        .then((payload) => dispatch(receiveStore(payload)))
        .fail((errors) => dispatch(receiveErrors(errors.responseJSON)))
};
