export const updateCart = (cart) => (
  $.ajax({
    url:`api/carts/${cart.id}`,
    method: 'PATCH',
    data: cart
  })
)

export const fetchCart = (cartId) =>
  $.ajax({
    method: "GET",
    url: `/api/carts/${cartId}`,
  });
