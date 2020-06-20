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
      address: ""
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
        this.initMap(order);

      }
    }
    const { currentUser } = this.props;
    var origin1 = new google.maps.LatLng(37.741249, -122.424217);
    var destinationA = order.store.address;
    var destinationB = currentUser.address;

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
    );
  }

  initMap(order) {
    // The location of Uluru
    const { currentUser } = this.props;
    var location = { lat: 37.75383, lng: -122.401772 };
    // The map, centered at location
    // var map = new google.maps.Map(
      // document.getElementById('map'), { zoom: 14, center: location });
    // The marker, positioned at location
    // var marker = new google.maps.Marker({ position: location, map: map });
    var map = new google.maps.Map(document.getElementById("order-map"), {
      zoom: 15,
      center: location,
    });
    var iconBase = "https://maps.google.com/mapfiles/kml/shapes/";
    var geocoder = new google.maps.Geocoder();
    geocoder.geocode({ address: currentUser.address }, function (
      results,
      status
    ) {
      // if (status == google.maps.GeocoderStatus.OK) {
      var homeMark = <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Home.png" alt=""/>
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: map,
        position: results[0].geometry.location,
        // icon: "https://dannydash-seeds.s3-us-west-1.amazonaws.com/Home.png",
      });
      // const address = document.getElementById("address");
      // address.innerHTML = results[0].formatted_address;
      this.setState({address: results[0].formatted_address})
    // }
    }.bind(this))

    geocoder.geocode({ address: order.store.address }, function (
      results,
      status
    ) {
      if (status == google.maps.GeocoderStatus.OK) {
        // var map = new google.maps.Map(document.getElementById("order-map"), {
        //   zoom: 14,
        //   center: results[0].geometry.location,
        // });
        // map.setCenter(results[0].geometry.location);
        var storeMark = <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Store.png" alt=""/>
        var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location,
          // icon: "https://dannydash-seeds.s3-us-west-1.amazonaws.com/Store.png",
        });
        // const address = document.getElementById("address");
        // address.innerHTML = results[0].formatted_address;
      }
    }.bind(this))
  }

  render() {
    const { match, currentUser, orders } = this.props;
    const { ETA, duration, durationText, distance, address } = this.state;
    const order = orders[match.params.orderId];
    if (order === undefined) return null;
    if (duration === 0) return null;
    if (ETA === "") return null;
    console.log(address)
    var date = new Date();
    var etaDate = new Date(order.createdAt);
    etaDate.setMinutes(etaDate.getMinutes() + duration / 60);
    const DeliveryStatus = date > etaDate ? "Delivered" : "In-Transit";
    const Plural = Object.keys(order.contents).length > 1 ? "Items" : "Item";
    console.log("wtf");
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
              <div className="section-details">
                <span>
                  The estimated distance for your order route is {distance} and
                  it would have taken approximately {durationText}.
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