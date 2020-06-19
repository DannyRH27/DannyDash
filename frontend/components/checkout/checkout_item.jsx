import React from 'react';

class CheckoutItem extends React.Component {
  constructor(props) {
    super(props)
    this.removeFromCart = this.removeFromCart.bind(this);
  }


  removeFromCart() {
    const { cart, item, updateCart } = this.props;
    const newCart = Object.assign({}, cart)
    if (Object.keys(newCart.contents).length >= 2) {
      delete newCart.contents[item.id]
    } else {
      newCart.contents = {}
    }
    updateCart(newCart);
    window.location.reload();
  }


  render(){
    const { item } = this.props;
    return (
      <div className="summary-details">
        <p>
          {item.quantity}
        </p>
        <div className="summary-item-details">
          <p>
            {item.name}
          </p>
          <p>
            ${parseFloat(item.price).toFixed(2)}
          </p>
        </div>
        <span onClick={this.removeFromCart} className="remove-button">
          Remove
        </span>
      </div>
    )
  }
}

export default CheckoutItem;