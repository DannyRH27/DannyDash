import React from 'react';
import { withRouter } from 'react-router-dom';
import { compose } from 'redux';


class OrderShow extends React.Component {
  constructor(props){
    super(props);

  }

  componentDidMount(){
    console.log('hi')
    const { fetchOrder } = this.props;
    
    fetchOrder(this.props.match.params.orderId)
      .then((action) => this.calculateDispatchDistance(action.payload.order))
  }

  calculateDispatchDistance(order){
    
    function callback(response, status) {
      if (status == "OK") {
        var origins = response.originAddresses;
        var destinations = response.destinationAddresses;

        for (var i = 0; i < origins.length; i++) {
          var results = response.rows[i].elements;
          for (var j = 0; j < results.length; j++) {
            var element = results[j];
            var distance = element.distance.text;
            var duration = element.duration.text;
            var from = origins[i];
            var to = destinations[j];
          }
        }
        console.log("hi")
        console.log(distance)
        console.log(duration)
        console.log(order)
      }
    }
    const { currentUser } = this.props;
    var origin1 = new google.maps.LatLng(37.741249, -122.424217);
    // var origin2 = 
    var destinationA = order.store.address
    var destinationB = currentUser.address
    
    console.log(currentUser.address)
    var service = new google.maps.DistanceMatrixService();
    service.getDistanceMatrix(
      {
        origins: [origin1],
        destinations: [destinationA, destinationB],
        travelMode: "DRIVING",
        // transitOptions: TransitOptions,
        // drivingOptions: DrivingOptions,
        // unitSystem: UnitSystem,
        // avoidHighways: Boolean,
        // avoidTolls: Boolean,
      },
      callback
    );
  }
  
  render(){
    const { match, currentUser, orders } = this.props;
    const order = orders[match.params.orderId]
    if (order === undefined) return null;

    return(
      <div className="order-show-container">
        <div className="order-show-drawer-container">
          <div className="order-show-drawer">
            <div className="drawer-section">
              <div className="section-details">
                <h1>Delivered</h1>
              </div>
              <div className="section-details">
                <span>{order.store.name}</span>
              </div>

            </div>
          </div>
        </div>

      </div>
    )
  }
}

export default withRouter(OrderShow);