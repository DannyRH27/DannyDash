import React from 'react';
import CartItem from './cart_item';
import { Link } from 'react-router-dom';

class CartIndex extends React.Component {
  constructor(props){
    super(props)

  }

  // componentDidMount(){
  //   this.props.fetchStores();
  // }

  render(){
    const { cart, updateCart, stores } = this.props;
    if (JSON.stringify(cart) === JSON.stringify({})) return null;
    const store = stores[cart.storeId]
    if (store === undefined) return null;
    let total = 0;
    Object.values(cart.contents).forEach(item => {
      let item_subtotal = (parseFloat(item.price) * parseFloat(item.quantity))
      total += item_subtotal
    })
    const CartItems = Object.values(cart.contents).map((item, idx) => (
      <CartItem key={idx} cart={cart} item={item} updateCart={updateCart}/>
    ));
    return (
      <div>
        <div className="cart-header">
          <h1>Your Order</h1>
          <Link to={`/stores/${cart.storeId}`}>{store.name}</Link>
        </div>
        <div className="cart-checkout-container">
          <div className="cart-checkout-button">
            <div className="cart-checkout-details">
              <span>Checkout</span>
              <p>${total.toFixed(2)}</p>
            </div>
          </div>
        </div>
        {CartItems}
      </div>
    );
  }
}

export default CartIndex;
// What if i threaded through the modal
// On click, add item to cart contents hash
// Need to thread dispatch through props
// Grab state from Redux store.