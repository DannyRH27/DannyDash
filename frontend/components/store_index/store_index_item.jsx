import React from 'react'
import { IoIosCheckmarkCircle } from "react-icons/io";
import { AiFillStar } from "react-icons/ai";
import { withRouter } from "react-router-dom"

class StoreIndexItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      duration: ''
    }
    this._isMounted = false;

    this.calculateDispatchDistance = this.calculateDispatchDistance.bind(this);
  }

  componentDidMount(){
    this._isMounted = true;
    const { fetchCurrentUser, fetchStore, store, currentUser } = this.props;
    var dispatchUser = {}
    if (currentUser && this._isMounted) {
        this.calculateDispatchDistance(store, currentUser);
    } else if (this._isMounted) {
        this.calculateDispatchDistance(store, dispatchUser);
    }
  }


  componentWillUnmount(){
    this._isMounted = false;
  }


  calculateDispatchDistance(store, currentUser) {
    function callback(response, status) {
      if (status == "OK") {
        var origins = response.originAddresses;
        var destinations = response.destinationAddresses;

        for (var i = 0; i < origins.length; i++) {
          var results = response.rows[i].elements;
          for (var j = 0; j < results.length; j++) {
            var element = results[j];
            var distance = '';
            var durationText = '';
            if (element.status !== "NOT_FOUND") {
              distance = element.distance.text;
              durationText = element.duration.text;
            }

            var from = origins[i];
            var to = destinations[j];
          }
        }

        if (this._isMounted) {
          this.setState({ duration: durationText });
        }

      }
    }
    var origin1 = store.address
    var destinationA = currentUser.address || new google.maps.LatLng(37.75383, -122.401772);
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

  render() {
    const { store } = this.props;
    const { duration } = this.state;

    const ETA = duration !== '' ? (
      <span>Approximately {duration} (Walking)</span>
    ) : <span>Not available in your area</span>
    const tags = store.filters.map((filter, idx) => (
      <p key={idx}>{filter}, &nbsp;</p>
    ));
    tags[tags.length - 1] = store.filters[store.filters.length - 1].substr(
      0,
      store.filters[store.filters.length - 1].length
    );
    const IndexItem =
      this.props.location.pathname === "/" ? (
        <div className="local-item-card">
          <div
            className="local-item-picture"
            style={{ backgroundImage: `url(${store.photoUrls[0]})` }}
          ></div>
          <div className="local-item-description">
            <span>{store.name}</span>
            <p>
              <IoIosCheckmarkCircle />
            </p>
          </div>
          <div className="local-item-eta">
            <span>{duration} • Free delivery</span>
          </div>
        </div>
      ) : (
        <div className="index-item-container">
          <div className="index-item-pictures">
            <div className="picture-container">
              <div className="picture-card">
                <img
                  className="index-picture"
                  src={`${store.photoUrls[0]}`}
                  alt=""
                />
              </div>
            </div>
            <div className="picture-container">
              <div className="picture-card">
                <img
                  className="index-picture"
                  src={`${store.photoUrls[1]}`}
                  alt=""
                />
              </div>
            </div>
          </div>
          <div className="index-item-info">
            <div className="info-container">
              <div className="info-title">
                <span>{store.name}</span>
                <p>
                  <IoIosCheckmarkCircle />
                </p>
              </div>
              <div className="info-filters">
                <span> {store.priceRating} • &nbsp; {tags} </span>
                {ETA}
              </div>
              <div className="info-misc">
                <div className="info-review">
                  <span>{store.rating}</span>
                  <p>
                    <AiFillStar />
                  </p>
                  <span> {store.ratingCount} ratings</span>
                </div>
                <span>Free Delivery</span>
              </div>
            </div>
          </div>
        </div>
      );
    return <div>{IndexItem}</div>;
  }
}

export default withRouter(StoreIndexItem);