import * as CartAPIUtil from '../util/cart_api_util';
export const RECEIVE_CART = "RECEIVE_CART";



const receiveCart = (cart) => ({
  type: RECEIVE_CART,
  cart
});


export const fetchCart = (cartId) => (dispatch) => (
  CartAPIUtil.fetchCart(cartId)
    .then((cart)=> dispatch(receiveCart(cart)))
);

export const updateCart = (cartId) => (dispatch) => (
  CartAPIUtil.updateCart(cartId)
    .then((cart)=> dispatch(receiveCart(cart)))
);
