import React from "react";
import { Link } from "react-router-dom";
import { RiNetflixLine } from "react-icons/ri";
import StoreIndexItem from "../store_index/store_index_item";
class Splash extends React.Component{
  constructor(props){
    super(props);
  };

  componentDidMount() {
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
      <div>
        <div
          className="splash-container"
          style={{
            backgroundImage: `url(https://dannydash-seeds.s3-us-west-1.amazonaws.com/Splash.jpg)`,
          }}
        >
          <div className="splash-card">
            <div className="splash-text">
              <h1>DannyDash</h1>
              <span>Your favorite stores, delivered</span>
              <Link to="/home">Order Now</Link>
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
        <div className="third-div">
          {/* <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Communal2.jpg" alt="" /> */}
        </div>
        <div className="fourth-div">
          {/* <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/Communal3.jpg" alt="" /> */}
        </div>
      </div>
    );
  }; 
};
export default Splash;