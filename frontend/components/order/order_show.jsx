import React from 'react';
import { withRouter } from 'react-router-dom';
import { GiKnifeFork } from "react-icons/gi";
import { MdDirectionsCar } from "react-icons/md";
import { TiHome } from "react-icons/ti";
import OrderShowItem from "./order_show_item";

class OrderShow extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      ETA: "",
      duration: 0,
      durationText: "",
      distance: "",
      address: "",
      deliveryDate: "",
    };

    this.calculateDispatchDistance = this.calculateDispatchDistance.bind(this);
    this.initMap.bind(this);
  }

  componentDidMount() {
    const { fetchOrder } = this.props;
  
    fetchOrder(this.props.match.params.orderId)
      .then((action) => this.calculateDispatchDistance(action.payload.order)
    );

  }

  calculateDispatchDistance(order) {
    const { updateOrder } = this.props;
    function callback(response, status) {
      if (status == "OK") {
        var origins = response.originAddresses;
        var destinations = response.destinationAddresses;

        for (var i = 0; i < origins.length; i++) {
          var results = response.rows[i].elements;
          for (var j = 0; j < results.length; j++) {
            var element = results[j];
            var distance = element.distance.text;
            var durationText = element.duration.text;
            var duration = element.duration.value;
            var from = origins[i];
            var to = destinations[j];
          }
        }
        var date = new Date(order.createdAt);
        date.setMinutes(date.getMinutes() + duration / 60);
        var minutes = date.getMinutes();
        var hours = date.getHours();
        var ampm = hours >= 12 ? "pm" : "am";
        hours = hours % 12;
        hours = hours ? hours : 12; // the hour '0' should be '12'
        minutes = minutes < 10 ? "0" + minutes : minutes;
        var strTime = hours + ":" + minutes + " " + ampm;
        if (order.deliveryEta === null) {
          const newOrder = Object.assign({}, order)
          newOrder.deliveryEta = strTime
          newOrder.deliveredDate = date
          updateOrder(newOrder)
        }
        

        this.setState({ duration: duration });
        this.setState({ ETA: strTime });
        this.setState({ durationText: durationText });
        this.setState({ distance: distance });
        this.setState({ deliveryDate: date })
        this.initMap(order);

      }
    }
    const { currentUser } = this.props;
    var origin1 = order.store.address;
    var destinationA = currentUser.address;

    var service = new google.maps.DistanceMatrixService();
    service.getDistanceMatrix(
      {
        origins: [origin1],
        destinations: [destinationA],
        travelMode: "WALKING",
        unitSystem: google.maps.UnitSystem.IMPERIAL,
      },
      callback.bind(this)
    );
  }

  initMap(order) {
    const { currentUser } = this.props;
    var location = { lat: 37.75383, lng: -122.401772 };
    var map = new google.maps.Map(document.getElementById("order-map"), {
      zoom: 15,
      center: location,
    });
    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({ address: currentUser.address }, function (
      results,
      status
    ) {
      var homeMark = <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Home.png" alt=""/>
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: map,
        position: results[0].geometry.location,
      });
      this.setState({address: results[0].formatted_address})
    // }
    }.bind(this))

    geocoder.geocode({ address: order.store.address }, function (
      results,
      status
    ) {
      if (status == google.maps.GeocoderStatus.OK) {
        var storeMark = <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Store.png" alt=""/>
        var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location,
        });
      }
    }.bind(this))
  }

  render() {
    const { match, currentUser, orders } = this.props;
    const { ETA, duration, durationText, distance, address, deliveryDate } = this.state;
    const order = orders[match.params.orderId];
    if (order === undefined) return null;
    if (duration === 0) return null;
    if (ETA === "") return null;
    if (deliveryDate === "") return null;
    var date = new Date();
    const DeliveryStatus = date > deliveryDate ? "Delivered" : "In-Transit";
    const Plural = Object.keys(order.contents).length > 1 ? "Items" : "Item";
    const visualClass =  date > deliveryDate ? null : 'in-transit'
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
                <div className="first-line" id={visualClass}></div>
                <GiKnifeFork className="visual-icon" />
                <div className="second-line" id={visualClass}></div>
                <MdDirectionsCar className="visual-icon" />
                <div className="third-line" id={visualClass}></div>
                <TiHome className="visual-icon" />
              </div>
              <div className="section-details">
                <span>
                  The estimated distance for your order route is {distance} and
                  it would have taken approximately {durationText} for Danny to
                  deliver this by walking. Hope you're not hungry!
                </span>
              </div>
            </div>
            <div className="drawer-section">
              <p>{order.store.name}</p>
              <div className="order-summary">
                <h1>
                  {Object.keys(order.contents).length} {Plural}
                </h1>
                {Object.values(order.contents).map((item) => (
                  <OrderShowItem key={item.id} item={item} />
                ))}
              </div>
            </div>
            <div className="drawer-section">
              <p>Address</p>
              <span>{address}</span>
            </div>
          </div>
        </div>
        <div id="order-map"></div>
      </div>
    );
  }
}

export default withRouter(OrderShow);