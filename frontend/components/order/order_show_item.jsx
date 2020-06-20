import React from 'react';

function OrderShowItem (props) {
  const { item } = props;
  return (
    <span>
      {item.quantity}x {item.name}
    </span>
  )
}

export default OrderShowItem;