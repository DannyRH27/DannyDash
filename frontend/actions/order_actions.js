import * as OrderAPIUtil from '../util/order_api_util'

export const RECEIVE_ORDERS = "RECEIVE_ORDERS"
export const RECEIVE_ORDER = 'RECEIVE_ORDER'
export const RECEIVE_ORDER_ERRORS = "RECEIVE_ORDER_ERRORS"

const receiveOrders = (orders) => ({
  type: RECEIVE_ORDERS,
  orders
})

const receiveOrder = (payload) => ({
  type: RECEIVE_ORDER,
  payload
});


const receiveErrors = (errors) => ({
  type: RECEIVE_ORDER_ERRORS,
  errors
})

export const fetchOrders = () => (dispatch) => {
  return OrderAPIUtil.fetchOrders()
    .then((orders) => dispatch(receiveOrders(orders)))
    .fail((errors) => dispatch(receiveErrors(errors.responseJSON)))
};


export const fetchOrder = (orderId) => (dispatch) => {
  return OrderAPIUtil.fetchOrder(orderId)
    .then((payload) => dispatch(receiveOrder(payload)))
    .fail((errors) => dispatch(receiveErrors(errors.responseJSON)))
};

export const createOrder = (order) => (dispatch) => {
  return OrderAPIUtil.createOrder(order)
    .then((payload) => dispatch(receiveOrder(payload)))
    .fail((errors) => dispatch(receiveErrors(errors.responseJSON)))
};

export const updateOrder = (order) => (dispatch) =>
  OrderAPIUtil.updateOrder(order)
    .then((order) => dispatch(receiveOrder(order)));

