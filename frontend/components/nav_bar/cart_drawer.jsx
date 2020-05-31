import React from "react";
import { Link, withRouter } from "react-router-dom";
import { BsX } from "react-icons/bs";
import { FiHome } from "react-icons/fi";
import {
  RiShoppingBag2Line,
  RiFileList3Line,
  RiAccountCircleLine,
  RiCloseCircleLine,
} from "react-icons/ri";

class CartDrawer extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { show, handleCartToggle, currentUser, location } = this.props;
    let drawerClasses = ["cart-drawer"];
    if (show || location.pathname.includes("/stores/")) {
      drawerClasses = ["cart-drawer", "open"];
    }

    const CartDrawer = location.pathname.includes("/stores/") ? (
      <nav
        onClick={(e) => e.stopPropagation()}
        className={drawerClasses.join(" ")}
      >
        <ul>
          <div className="empty-cart">
            <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/EmptyCart.svg" />
            <p>Your cart is empty</p>
            <p>Add items to get started</p>
          </div>
        </ul>
      </nav>
    ) : (
      <nav
        onClick={(e) => e.stopPropagation()}
        className={drawerClasses.join(" ")}
      >
        <ul>
          <div className="closer-box">
            <p className="side-bar-icon" onClick={handleCartToggle}>
              <BsX />
            </p>
          </div>
          <div className="empty-cart">
            <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/EmptyCart.svg" />
            <p>Your cart is empty</p>
            <p>Add items to get started</p>
          </div>
        </ul>
      </nav>
    );
    return (
      <div>
        {CartDrawer}
      </div>
    );
  }
}

export default withRouter(CartDrawer);
