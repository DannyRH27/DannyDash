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
      <li>
        {item.name}
        <p onClick={this.removeFromCart}>Remove</p>
      </li>
    )
  }
}

export default CartItem;