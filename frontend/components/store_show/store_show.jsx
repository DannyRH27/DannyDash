import React from 'react';
import { withRouter } from 'react-router-dom';
import { IoIosCheckmarkCircle } from "react-icons/io";
import { FaStar } from "react-icons/fa";
import StoreShowMenu from './store_show_menu';
import { HashLink } from "react-router-hash-link";
import { Link, animateScroll as scroll } from "react-scroll";
import StarRatings from "react-star-ratings";


class StoreShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    window.scrollTo(0,0);
    const { storeId, fetchStore, fetchMenus, fetchItems } = this.props;
    fetchStore(storeId);
    fetchMenus(storeId);
    fetchItems(storeId);
  }

  componentDidUpdate(prevProps){
    const { storeId, fetchStore, fetchMenus, fetchItems } = this.props;
    
    if (this.props.location.pathname !== prevProps.location.pathname) { 
      fetchStore(storeId)
      fetchMenus(storeId)
      fetchItems(storeId)
    }
  }

  render() {
    const { store, menus, items, openModal, receiveModalItem } = this.props;
    if (store === null || store === undefined || store === false) return null;
    if (menus === null || menus === undefined || menus === false) return null;
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
                    <div>
                      <span>1 - 2</span>
                      <p>hours</p>
                    </div>
                    <div>
                      <span>2.0</span>
                      <p>miles</p>
                    </div>
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