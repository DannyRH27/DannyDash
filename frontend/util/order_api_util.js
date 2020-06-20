export const fetchOrders = () =>
  $.ajax({
    url: "api/orders",
    method: "GET",
  });

export const fetchOrder = (orderId) =>
  $.ajax({
    method: "GET",
    url: `/api/orders/${orderId}`,
  });

export const createOrder = (order) =>
  $.ajax({
    url: "/api/orders",
    method: "POST",
    data: { order: order },
  });

export const updateOrder = (order) =>
  $.ajax({
    url: `/api/orders/${order.id}`,
    method: "PATCH",
    data: { order: order },
  });

