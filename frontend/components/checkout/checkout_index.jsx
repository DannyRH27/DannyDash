import React from 'react';


class CheckoutIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount(){
    const {fetchStores, fetchCart, fetchCartStore, cart, currentUser, store} = this.props;
    // this.initMap();
    fetchCart(currentUser.id).then((payload) => {
      fetchCartStore(payload.cart.storeId)
        .then((store) => this.initMap(store.payload))
    })
  }

  componentDidUpdate(){
    const { fetchStores, fetchCart, fetchCartStore, cart, currentUser } = this.props;
    // if (cart !== undefined) fetchCartStore(cart.storeId)
    // this.initMap();
  }

  initMap(store) {
    // The location of Uluru
    console.log(store)
    console.log(typeof store.coordinate.y)
    console.log(typeof store.coordinate.x)
    var location = { lat: store.coordinate.x , lng: store.coordinate.y };
    // The map, centered at location
    var map = new google.maps.Map(
      document.getElementById('map'), { zoom: 14, center: location });
    // The marker, positioned at location
    var marker = new google.maps.Marker({ position: location, map: map });
    
    
    
  }

  render(){
    const { store, cart, currentUser } = this.props;
    // if (cart === undefined) return null;
    return (
      <div className="checkout-index-wrapper">
        <div className="checkout-index-container">
          <div className="checkout-index-card">
            <div className="checkout-index">
              <div className="checkout-section">
                <div className="checkout-section-header">
                  <h2>Address</h2>
                </div>
                <div id="map"></div>
              </div>
              <div className="checkout-section">
                <div className="checkout-section-header">
                  <h2>Phone Number</h2>
                </div>
                <div id="map"></div>
              </div>
              <div className="checkout-section">
                <div className="checkout-section-header">
                  <h2>Payment</h2>
                </div>
                <div id="map"></div>
              </div>
              <div className="checkout-section">
                <div className="checkout-section-header">
                  <h2>Summary</h2>
                </div>
                <div id="map"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default CheckoutIndex;