import React from "react";
import CartIndexContainer from "../cart/cart_index_container";
import CheckoutDrawerContainer from "./checkout_drawer_container";
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
    this._isMounted = false;
  }

  componentDidMount() {
    const { fetchCart, fetchCartStore, currentUser } = this.props;
    this._isMounted = true;
    window.addEventListener("click", this.props.hideCartSideBar);
    if (this._isMounted && currentUser) {
      fetchCart(currentUser.id)
    }
  }

  componentWillUnmount() {
    this._isMounted = false;
    window.removeEventListener("click", this.props.hideCartSideBar);
  }

  render() {
    const {
      show,
      handleCartToggle,
      currentUser,
      location,
      cart,
      cartStore,
      fetchCart,
      fetchCartStore,
    } = this.props;
    let drawerClasses = ["cart-drawer"];
    if (
      show ||
      location.pathname.includes("/stores/") ||
      location.pathname === "/checkout"
    ) {
      drawerClasses = ["cart-drawer", "open"];
    }
    const EmptyCart = (
      <div className="empty-cart">
        <img src="https://dannydash-seeds.s3-us-west-1.amazonaws.com/EmptyCart.svg" />
        <p>Your cart is empty</p>
        <p>Add items to get started</p>
      </div>
    );
    const CartShow =
      JSON.stringify(cart.contents) === JSON.stringify({}) || !cart.contents ? (
        EmptyCart
      ) : (
        <CartIndexContainer />
      );
    const CartDrawer = location.pathname.includes("/stores/") ? (
      <nav
        onClick={(e) => e.stopPropagation()}
        className={drawerClasses.join(" ")}
        id="store-cart"
      >
        <ul>{CartShow}</ul>
      </nav>
    ) : location.pathname === "/checkout" ? (
      <div>
        <CheckoutDrawerContainer drawerClasses={drawerClasses} />
      </div>
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
          {CartShow}
        </ul>
      </nav>
    );
    return <div>{CartDrawer}</div>;
  }
}

export default withRouter(CartDrawer);
