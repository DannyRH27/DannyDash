import React from 'react';


class CheckoutIndex extends React.Component {

  render(){
    const { store, cart, currentUser } = this.props;
    return (
      <div className="checkout-index-wrapper">
        <div className="checkout-index-container">
          <div className="checkout-index-card">
            <div className="checkout-index">
              <p>cool</p>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default CheckoutIndex;