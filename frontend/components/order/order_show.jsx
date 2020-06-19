import React from 'react';
import { withRouter } from 'react-router-dom';
import { GiKnifeFork } from "react-icons/gi";
import { MdDirectionsCar } from "react-icons/md";
import { TiHome } from "react-icons/ti";

class OrderShow extends React.Component {
  constructor(props){
    super(props);

    this.state = {
      ETA: '',
      duration: 0
    }

    this.calculateDispatchDistance = this.calculateDispatchDistance.bind(this);
  }

  componentDidMount(){
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
            var duration = element.duration.value;
            var from = origins[i];
            var to = destinations[j];
          }
        }
        var date = new Date(order.createdAt);
        date.setMinutes(date.getMinutes() + (duration/60));
        var minutes = date.getMinutes();
        var hours = date.getHours();
        var ampm = hours >= 12 ? "pm" : "am";
        hours = hours % 12;
        hours = hours ? hours : 12; // the hour '0' should be '12'
        minutes = minutes < 10 ? "0" + minutes : minutes;
        var strTime = hours + ":" + minutes + " " + ampm;
        this.setState({ duration: duration})
        this.setState({ ETA: strTime });
      }
    }
    const { currentUser } = this.props;
    var origin1 = new google.maps.LatLng(37.741249, -122.424217);
    var destinationA = order.store.address
    var destinationB = currentUser.address
    
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
      callback.bind(this)
    )
  }
  
  render(){
    const { match, currentUser, orders } = this.props;
    const { ETA, duration } = this.state;
    const order = orders[match.params.orderId]
    if (order === undefined) return null;
    if (duration === 0) return null;
    if (ETA === '') return null;
    
    var date = new Date();
    var etaDate = new Date(order.createdAt)
    etaDate.setMinutes( etaDate.getMinutes() + duration/60)
    const DeliveryStatus = date > etaDate ? "Delivered" : "In-Transit"

    console.log('wtf')
    return (
      <div className="order-show-container">
        <div className="order-show-drawer-container">
          <div className="order-show-drawer">
            <div className="drawer-section">
              <div className="section-details">
                <h1>{DeliveryStatus}</h1>
              </div>
              <div className="section-details">
                <span>
                  {order.store.name} · {ETA} arrival
                </span>
              </div>
              <div className="delivery-visual">
                <div className="first-line"></div>
                <GiKnifeFork className="visual-icon" />
                <div className="second-line"></div>
                <MdDirectionsCar className="visual-icon" />
                <div className="third-line"></div>
                <TiHome className="visual-icon" />
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(OrderShow);