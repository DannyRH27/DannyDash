import React from "react";

class CartItem extends React.Component {
  constructor(props){
    super(props)
    this.removeFromCart = this.removeFromCart.bind(this);
  }

  removeFromCart(){
    const { cart, item, updateCart } = this.props; 
    const newCart = Object.assign({}, cart)
    if (Object.keys(newCart.contents).length >= 2){
      delete newCart.contents[item.name]
    } else {
      newCart.contents = {}
    }
    updateCart(newCart)
  }

  render(){
    const { item } = this.props;

    return (
      <div className="cart-item-container">
        <div className="cart-item-details">
          <span>{item.quantity} x</span>
          <p>{item.name}</p>
          <p onClick={this.removeFromCart}>Remove</p>
          <p>${parseFloat(item.price).toFixed(2)}</p>
        </div>
      </div>
    );
  }
}

export default CartItem;