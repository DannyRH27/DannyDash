import React from 'react';
import { withRouter } from 'react-router-dom';
import { FaCcVisa } from "react-icons/fa";
import CheckoutItem from "./checkout_item";


class CheckoutIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      address: this.props.currentUser.address,
      tempAddress: "",
      mapLoaded: false,
    };

    this.handleFocus = this.handleFocus.bind(this);
    this.handleBlur = this.handleBlur.bind(this);
    this.handleEnter = this.handleEnter.bind(this);
    this.handleInput = this.handleInput.bind(this);
    this.placeOrder = this.placeOrder.bind(this);
    this.initMap = this.initMap.bind(this);
  }

  componentDidMount() {
    this._isMounted = true;
    const {
      fetchCart,
      fetchCartStore,
      currentUser,
    } = this.props;

    fetchCart(currentUser.id).then((payload) => {
      fetchCartStore(payload.cart.storeId).then((store) =>
        this.initMap(store.payload)
      );
    });

  }

  handleInput(e) {
    this.setState({ tempAddress: e.target.value });
  }

  handleFocus(e) {
    e.currentTarget.placeholder = "";
  }

  handleBlur(e) {
    const { currentUser } = this.props;
    e.currentTarget.placeholder =
      "Please enter a valid address";
  }

  handleEnter(e) {
    const { currentUser, update, closeDropdown } = this.props;
    const newUser = Object.assign({}, currentUser);
    newUser.address = this.state.tempAddress;
    update(newUser).then(() => {
      window.location.reload();
    });
  }

  placeOrder() {
    const orderButton = document.getElementById("placeButton");
    orderButton.click();
  }

  initMap(store) {
    const { currentUser } = this.props;

    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({ address: currentUser.address }, function (
      results,
      status
    ) {
      if (status == google.maps.GeocoderStatus.OK) {
        this.setState({ mapLoaded: true })
        var map = new google.maps.Map(document.getElementById("map"), {
          zoom: 14,
          center: results[0].geometry.location,
        });
        var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location,
        });
        const address = document.getElementById("address");
        address.innerHTML = results[0].formatted_address;

      }
    }.bind(this));
  }

  render() {
    const { store, cart, currentUser, updateCart } = this.props;
    const { mapLoaded } = this.state;
    if (cart.contents === undefined) return null;
    const PlaceOrder =
      currentUser.address && mapLoaded ?
        !(Object.values(cart.contents).length === 0) ? (
          <button id="order-button" onClick={this.placeOrder}>
            Place Order
          </button>
      ) : (
        <button
          id="order-button"
          className="disabled"
          onClick={this.placeOrder}
          disabled
        >
          Place Order
        </button>
      ) : (
        <button
          id="order-button"
          className="disabled"
          onClick={this.placeOrder}
          disabled
        >
          Place Order
        </button>
      );
    const CheckoutMap = currentUser.address && mapLoaded ? (
      <div className="checkout-section-details">
        <div id="map"></div>
        <p id="address"></p>
      </div>
    ) : (
      <div className="checkout-section-details">
        <form onSubmit={this.handleEnter}>
          <input
            onChange={this.handleInput}
            className="checkout-address-input"
            placeholder="Please enter a valid address"
            type="text"
            pattern="(\w.+\s.+\s\w+)"
            title="123 John Doe Lane, San Francisco CA 94110"
            onFocus={this.handleFocus}
            onBlur={(e) => this.handleBlur(e)}
          />
          <input value="Submit" type="submit" />
        </form>
      </div>
    );

    return (
      <div className="checkout-index-wrapper">
        <div className="checkout-index-container">
          <div className="checkout-index-card">
            <div className="checkout-index">
              <div id="address-section" className="checkout-section">
                <div className="checkout-section-header">
                  <h2>Address</h2>
                </div>
                {CheckoutMap}
              </div>
              <div className="checkout-section">
                <div className="checkout-section-header">
                  <h2>Phone Number</h2>
                </div>
                <div className="checkout-section-details">
                  <p>{currentUser.phoneNumber}</p>
                </div>
              </div>
              <div className="checkout-section">
                <div className="checkout-section-header">
                  <h2>Payment</h2>
                </div>
                <div className="checkout-section-details">
                  <div className="payment-details">
                    <FaCcVisa />
                    <p>Visa....8888</p>
                  </div>
                </div>
              </div>
              <div className="checkout-section">
                <div className="checkout-section-header">
                  <h2>Summary</h2>
                </div>
                <div className="checkout-section-details">
                  {Object.values(cart.contents).map((item) => (
                    <CheckoutItem
                      key={item.id}
                      item={item}
                      updateCart={updateCart}
                      cart={cart}
                    />
                  ))}
                </div>
              </div>
              <div id="button-section" className="checkout-section">
                <div className="checkout-section-header"></div>
                <div className="checkout-section-details">{PlaceOrder}</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(CheckoutIndex);