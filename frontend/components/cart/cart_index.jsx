import React from 'react';
import CartItem from './cart_item';
import { Link, withRouter } from 'react-router-dom';

class CartIndex extends React.Component {
  constructor(props){
    super(props)
    this._isMounted = false;
  }

  componentDidMount(){
    const { fetchStores, fetchCartStore, cart, location } = this.props;
    this._isMounted = true;

    if (this._isMounted) {
      if (location.pathname.slice(0, 5) === "/home") {
        fetchStores();
      }
      fetchCartStore(cart.storeId);
    }
    
  }

  componentWillUnmount(){
    this._isMounted = false;
  }

  render(){
    const { cart, updateCart, store } = this.props;
    if (JSON.stringify(cart) === JSON.stringify({})) return null;
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
          <Link to="/checkout">
            <div className="cart-checkout-button">
              <div className="cart-checkout-details">
                <span>Checkout</span>
                <p>${total.toFixed(2)}</p>
              </div>
            </div>
          </Link>
        </div>
        {CartItems}
      </div>
    );
  }
}

export default withRouter(CartIndex);