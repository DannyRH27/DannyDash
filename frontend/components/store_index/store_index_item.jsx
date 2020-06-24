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


    this.calculateDispatchDistance = this.calculateDispatchDistance.bind(this);
  }

  componentDidMount(){
    
    const { fetchCurrentUser, fetchStore, store, currentUser } = this.props;
    if (currentUser) {
      var dispatchUser = {};
      fetchCurrentUser()
        .then((action) => {
          dispatchUser = action.currentUser;
        })
        .then(() => {
          fetchStore(store.id).then((store) => {
            this.calculateDispatchDistance(store.payload, dispatchUser);
          });
        });
    } else {
      fetchStore(store.id).then((store) => {
        this.calculateDispatchDistance(store.payload, dispatchUser);
      });
    }
    
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
            var distance = element.distance.text;
            var durationText = element.duration.text;
            var from = origins[i];
            var to = destinations[j];
          }
        }
        this.setState({ duration: durationText });

      }
    }
    var origin1 = store.address
    var destinationA = new google.maps.LatLng(37.75383, -122.401772);
    console.log(store.name)
    console.log(destinationA)
    if (currentUser) {
      destinationA = currentUser.address
    }
    var service = new google.maps.DistanceMatrixService();
    service.getDistanceMatrix(
      {
        origins: [origin1],
        destinations: [destinationA],
        travelMode: "WALKING",
        unitSystem: google.maps.UnitSystem.IMPERIAL,
        // transitOptions: TransitOptions,
        // drivingOptions: DrivingOptions,
        // unitSystem: UnitSystem,
        // avoidHighways: Boolean,
        // avoidTolls: Boolean,
      },
      callback.bind(this)
    );
  }

  render() {
    const { store } = this.props;
    const { duration } = this.state;
    // if (store === null || store === undefined || store === false) return null;
    // if (this.props.location.pathname === "/home" && duration === '') return null;
    // if (store.filters === undefined) return null;
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
                <span> $ • &nbsp; {tags} </span>
                <span>Approximately {duration}</span>
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