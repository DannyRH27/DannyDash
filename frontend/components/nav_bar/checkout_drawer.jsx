import React from "react";
import ReactTooltip from "react-tooltip";
import { withRouter } from "react-router-dom";
import { GrCircleInformation } from "react-icons/gr";
class CheckoutDrawer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      store: {},
      cart: {},
      tip: 'Please add a tip',
      validAddress: false
    }
    this.onSelect = this.onSelect.bind(this);
    this.placeOrder = this.placeOrder.bind(this);
  }

  componentDidMount() {
    const {
      fetchCart,
      fetchCartStore,
      currentUser,
    } = this.props;
    fetchCart(currentUser.id).then((payload) => {
      this.setState({ cart: payload.cart})
      fetchCartStore(payload.cart.storeId)
        .then(payload => this.setState({ store: payload.payload}))
    });

    var geocoder = new google.maps.Geocoder();
    geocoder.geocode(
      { address: currentUser.address },
      function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
          
          this.setState({ validAddress: true })
        }
      }.bind(this)
    );
    
  }


  placeOrder(){
    const { currentUser, createOrder, store, cart } = this.props;
    let orderTotal = document.getElementById("total").innerHTML.split("$")
    if (Object.values(cart.contents).length !== 0) {
      const newOrder = {
        contents: cart.contents,
        customer_id: currentUser.id,
        store: Object.values(store)[0],
        total: parseFloat(orderTotal[1])
      };
      createOrder(newOrder)
        .then((action) => this.props.history.push(`/orders/${action.payload.order.id}`))
    }
  }

  onSelect(e){
    e.target.focus();
    let value = e.target.innerHTML.split('$')
    this.setState({ tip: parseFloat(value[1])})
  }

  render() {
    const { drawerClasses, currentUser } = this.props;
    const { store, cart, tip, validAddress } = this.state;
    const orderButton = document.getElementById("order-button");
    if (orderButton === undefined) return null;
    if (currentUser === undefined) return null;
    
    if (Object.values(cart).length === 0 ) return null;
    let subtotal = 0
    Object.values(cart.contents).forEach((item) => {
      let item_subtotal = parseFloat(item.price) * parseFloat(item.quantity);
      subtotal += item_subtotal;
    });
    let tax = subtotal * 0.0875
    let service = subtotal * 0.11
    let fees = tax + service
    let baseTip = Math.round(subtotal * .1)
    let selectedTip = typeof tip === typeof "" ? <p>{tip}</p> : <p>${tip.toFixed(2)}</p>
    let total = typeof tip === typeof "" ? subtotal + fees : subtotal + fees + tip
    let tooltip = `Estimated Tax: $${tax.toFixed(2)}<br/>Service Fee: $${service}<br/><br/>This 11% service fee helps us<br/>operate DannyDash.`
    const PlaceOrder =
      currentUser.address && validAddress ? 
        !(Object.values(cart.contents).length === 0) ? (
          <button
            id="placeButton"
            onClick={this.placeOrder}
            className="checkout-drawer-button"
          >
            Place Order
          </button>
        ) : (
          <button
          id="placeButton"
          onClick={this.placeOrder}
          className="checkout-drawer-button disabled"
          disabled
        >
          Place Order
        </button>
      ) : (
        <button
          id="placeButton"
          onClick={this.placeOrder}
          className="checkout-drawer-button disabled"
          disabled
        >
          Place Order
        </button>
      );
    return (
      <nav
        onClick={(e) => e.stopPropagation()}
        className={drawerClasses.join(" ")}
        id="store-cart"
      >
        <div className="checkout-drawer-section">
          <div className="checkout-drawer-header">
            <h1>Order From</h1>
            <span>{store.name}</span>
          </div>
          {PlaceOrder}
          <div className="checkout-drawer-payment">
            <div className="payment-section">
              <p>Subtotal</p>
              <p>${subtotal.toFixed(2)}</p>
            </div>
            <div className="payment-section">
              <div className="tax-details">
                <p>Fees and Estimated Tax</p>
                <ReactTooltip effect="solid" place="bottom" multiline={true} />
                <p data-tip={tooltip}>
                  <GrCircleInformation id="tooltip" />
                </p>
              </div>
              <p>${fees.toFixed(2)}</p>
            </div>
            <div className="payment-section">
              <p>Delivery</p>
              <p>Free</p>
            </div>
          </div>
        </div>
        <div className="checkout-drawer-section">
          <div className="payment-section">
            <p>Dasher Tip</p>
            {selectedTip}
          </div>
          <div className="tip-radio-inputs">
            <button onClick={this.onSelect} autoFocus>
              ${baseTip.toFixed(2)}
            </button>
            <button onClick={this.onSelect}>${(baseTip + 1).toFixed(2)}</button>
            <button onClick={this.onSelect}>${(baseTip + 2).toFixed(2)}</button>
            <button onClick={this.onSelect}>${(baseTip + 3).toFixed(2)}</button>
          </div>
          <div className="dasher-info">
            <p>
              The recommended Dasher tip is based on the delivery distance and
              effort. 100% of the tip goes to your Dasher.
            </p>
          </div>
        </div>
        <div className="checkout-drawer-section">
          <div className="payment-section">
            <p>Total</p>
            <p>${total.toFixed(2)}</p>
          </div>
        </div>
        <div id="final" className="checkout-drawer-section">
          <div className="payment-section">
            <p>Amount Due</p>
            <p id="total">${total.toFixed(2)}</p>
          </div>
        </div>
      </nav>
    );
  }
}
export default withRouter(CheckoutDrawer);