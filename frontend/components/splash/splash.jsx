import React from "react";
import { Link } from "react-router-dom";
import { RiNetflixLine } from "react-icons/ri";
import StoreIndexItem from "../store_index/store_index_item";
class Splash extends React.Component{
  constructor(props){
    super(props);
  };

  componentDidMount() {
    window.scrollTo(0, 0);
    this.props.fetchStores();
  }

  render(){
        const {
          fetchCurrentUser,
          stores,
          fetchStore,
          fetchStores,
        } = this.props;

    let locals = {};
    const storeIds = Object.keys(stores);
    storeIds.forEach(id => {
      if (Object.values(locals).length !== 6){
        locals[id] = stores[id];
      }
    })

    return (
      <div className="splash-page">
        <div
          className="splash-container"
          style={{
            backgroundImage: `url(https://dannydash-seeds.s3-us-west-1.amazonaws.com/Splash10.jpg)`,
          }}
        >
          <div className="splash-card">
            <div className="splash-text">
              <h1>DannyDash</h1>
              <span>Your favorite stores, delivered</span>
              <Link to="/home">Order Quickly</Link>
            </div>
          </div>
        </div>
        <div className="local-favorites-container">
          <div className="local-favorites-card">
            <h1>Local Favorites</h1>
            <div className="local-favorites-index">
              {Object.values(locals).map((store, idx) => (
                <div key={idx}>
                  <Link to={`/stores/${store.id}`}>
                    <StoreIndexItem
                      fetchCurrentUser={fetchCurrentUser}
                      fetchStore={fetchStore}
                      fetchStores={fetchStores}
                      store={store}
                    />
                  </Link>
                </div>
              ))}
            </div>
          </div>
        </div>
        <div className="splash-entry-points-container">
          <div className="first-entry-point">
            <div className="entry-point">
              <div className="entry-point-details">
                <h1>Every Order Delivered Personally</h1>
                <span>
                  From your neighborhood sushi spot to the burger and fries you
                  crave, Danny Huang always delivers (on code and food)...by walking.
                </span>
                <Link to="/home">
                  <button>Order Quickly</button>
                </Link>
              </div>
              <div id="first-pic" className="entry-point-picture">
                <img
                  src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Communal2.jpg"
                  alt=""
                />
              </div>
            </div>
          </div>
          <div className="second-entry-point">
            <div className="entry-point">
              <div id="second-pic" className="entry-point-picture">
                <img
                  src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Communal3.jpg"
                  alt=""
                />
              </div>
              <div className="entry-point-details">
                <h1>Seriously, it might take a while.</h1>
                <span>
                  Some of our customers have even waited days, but they keep
                  coming back for more.
                </span>
                <Link to="/home">
                  <button>Order Quickly</button>
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }; 
};
export default Splash;