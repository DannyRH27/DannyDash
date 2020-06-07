import React from 'react';
import CartItem from './cart_item';

class CartIndex extends React.Component {
  constructor(props){
    super(props)

  }

  render(){
    const { cart, updateCart } = this.props;
    if (JSON.stringify(cart) === JSON.stringify({})) return null;
    const CartItems = Object.values(cart.contents).map((item, idx) => (
      <CartItem key={idx} cart={cart} item={item} updateCart={updateCart}/>
    ));
    return (
      <div className="cart-test">
        <ul>
          {CartItems}
        </ul>
      </div>
    );
  }
}

export default CartIndex;
// What if i threaded through the modal
// On click, add item to cart contents hash
// Need to thread dispatch through props
// Grab state from Redux store.