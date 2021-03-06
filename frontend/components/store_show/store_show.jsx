import React from 'react';
import { withRouter } from 'react-router-dom';
import { IoIosCheckmarkCircle } from "react-icons/io";
import StoreShowMenu from './store_show_menu';
import { Link, animateScroll as scroll } from "react-scroll";
import StarRatings from "react-star-ratings";


class StoreShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      duration: 0,
      distance: '',
      loading: true
    }

  }

  componentDidMount() {
    window.scrollTo(0, 0);
    const { storeId, fetchStore, currentUser, fetchMenus, fetchItems } = this.props;
    var dispatchUser = {};
     if (currentUser) {
        fetchStore(storeId).then((store) => {
          this.calculateDispatchDistance(store.payload, currentUser);
        });
     } else {
       fetchStore(storeId).then((store) => {
         this.calculateDispatchDistance(store.payload, dispatchUser);
       });
     }
     
    fetchMenus(storeId)
     .then(() => fetchItems(storeId))
     .then(() => this.setState({ loading: false }))
  }

  componentDidUpdate(prevProps) {
    const { storeId, fetchStore, fetchMenus, fetchItems } = this.props;

    if (this.props.location.pathname !== prevProps.location.pathname) {
      fetchStore(storeId);
      fetchMenus(storeId);
      fetchItems(storeId);
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
            var distance = "";
            var duration = 0;
            if (element.status !== "NOT_FOUND") {
              distance = element.distance.text;
              duration = element.duration.value;
            }
          }
        }

        if (element.status !== "NOT_FOUND") {
          this.setState({ duration: duration });
          if (distance.split(" ")[1] === "ft") {
            this.setState({
              distance: (parseInt(distance.split(" ")[0]) / 5280).toFixed(2),
            });
          } else {
            this.setState({ distance: distance.split(" ")[0] });
          }
        }
      }
    }
    var origin1 = store.address;
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
    const { loading } = this.state;
    if (loading) return (
      <div className="loading-spinner-background">
        <div className="loading-spinner">
        </div>
      </div>
    )
    const { store, menus, items, openModal, receiveModalItem } = this.props;
    const { distance, duration } = this.state;
    if (store === null || store === undefined || store === false) return null;
    if (menus === null || menus === undefined || menus === false) return null;

    var days = Math.trunc(duration / 86400)
    var minutes = Math.trunc(((duration % 86400) % 3600) / 60);
    var minMinuteRange = Math.trunc(((duration % 86400) % 3600) / 60) - 3;
    var maxMinuteRange = Math.trunc(((duration % 86400) % 3600) / 60) + 8;
    var hours = Math.trunc((duration % 86400)/ 3600)
    if (maxMinuteRange >= 60) {
      hours = hours + 1
      minMinuteRange = 0
      maxMinuteRange = maxMinuteRange % 60
    }
    if ( hours >= 24 ) {
      days = days + 1
      hours = hours % 60
    }
    if (minMinuteRange <=0 ) {
      minMinuteRange = 0
    }

    const DaysETA =
      days !== 0 ? (
        <div>
          <span>{days}</span>
          <p>days</p>
        </div>
      ) : null;
    const HoursETA =
      hours !== 0 ? (
        <div>
          <span>{hours}</span>
          <p>hours</p>
        </div>
      ) : null;
    const MinutesETA =
      minutes !== 0 ? (
        <div>
          <span>{minMinuteRange}-{maxMinuteRange}</span>
          <p>minutes</p>
        </div>
      ) : null;

    const Distance = 
      distance !== '' ? (
        <div>
          <span>{distance}</span>
          <p>miles</p>
        </div>
      ) : null;
    return (
      <div className="store-show-container">
        <div className="store-show-box">
          <div className="store-info">
            <header>
              <div className="store-header-container">
                <div className="store-header-info">
                  <div className="danny-pass">
                    <p>
                      <IoIosCheckmarkCircle />{" "}
                    </p>
                    <span>Free Delivery with DannyPass</span>
                  </div>
                  <h1>{store.name}</h1>
                  <span>Open Hours: {store.hours[0]}</span>
                  <div className="store-show-rating">
                    <StarRatings
                      rating={parseFloat(store.rating)}
                      starRatedColor="black"
                      starDimension="20px"
                      starSpacing="1px"
                      numberOfStars={5}
                    />
                    <span>
                      {store.rating} ({store.ratingCount} Ratings)
                    </span>
                  </div>
                </div>
                <div className="delivery-header-container">
                  <div className="delivery-header-info">
                    <div>
                      <span>Free</span>
                      <p>Delivery</p>
                    </div>
                    {DaysETA}
                    {HoursETA}
                    {MinutesETA}
                    {Distance}
                  </div>
                </div>
              </div>
            </header>
            <div className="menu-search-container">
              <div className="menu-search-bar">
                {/* Need to fix anchor tags with React Router Hash Link */}
                {Object.values(menus).map((menu, idx) => (
                  <Link
                    key={idx}
                    to={`#${menu.title.split(" ").join("")}`}
                    smooth={true}
                    offset={-65}
                  >
                    {menu.title}
                  </Link>
                ))}
              </div>
            </div>
            <div className="menu-container">
              {Object.values(menus).map((menu, idx) => (
                <StoreShowMenu
                  receiveModalItem={receiveModalItem}
                  openModal={openModal}
                  key={idx}
                  menu={menu}
                  items={items}
                />
              ))}
            </div>
          </div>
        </div>
      </div>
    );
  }
}
export default withRouter(StoreShow);