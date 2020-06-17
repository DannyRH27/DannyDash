import React from "react";
import ReactTooltip from "react-tooltip";
import { GrCircleInformation } from "react-icons/gr";
class CheckoutDrawer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      store: {},
      cart: {},
      tip: null
    }
  }

  componentDidMount() {
    const {
      fetchStores,
      fetchCart,
      fetchCartStore,
      cart,
      currentUser,
    } = this.props;
    fetchCart(currentUser.id).then((payload) => {
      this.setState({ cart: payload.cart})
      fetchCartStore(payload.cart.storeId)
        .then(payload => this.setState({ store: payload.payload}))
    });
  }

  render() {
    const { drawerClasses } = this.props;
    const { store, cart, tip } = this.state;
    let subtotal = 0
    if (Object.values(cart).length === 0 ) return null;
    Object.values(cart.contents).forEach((item) => {
      let item_subtotal = parseFloat(item.price) * parseFloat(item.quantity);
      subtotal += item_subtotal;
    });

    let tax = subtotal * 0.11
    let total = subtotal + tax
    console.log(tax)

    return (
      <nav
        onClick={(e) => e.stopPropagation()}
        className={drawerClasses.join(" ")}
        id="store-cart"
      >
        <div className="checkout-drawer-section">
          <div className="checkout-drawer-header">
            <h1>Order From</h1>
            <span>{store.name}</span>
          </div>
          <button className="checkout-drawer-button">Place Order</button>
          <div className="checkout-drawer-payment">
            <div className="payment-section">
              <p>Subtotal</p>
              <p>${subtotal.toFixed(2)}</p>
            </div>
            <div className="payment-section">
              <div className="tax-details">
                <p>Fees and Estimated Tax</p>
                <ReactTooltip place="bottom" multiline={true} />
                <p data-tip="hello world">
                  <GrCircleInformation className="tooltip" />
                </p>
              </div>
              <p>${tax}</p>
            </div>
            <div className="payment-section">
              <p>Delivery</p>
              <p>Free</p>
            </div>
          </div>
        </div>
        <div className="checkout-drawer-section">
          <div className="checkout-drawer-payment">
            <div className="checkout-drawer-payment">
              <div className="payment-section">
                <p>Dasher Tip</p>
                <p>$4.00</p>
              </div>
            </div>
          </div>
        </div>
      </nav>
    );
  }
}
export default CheckoutDrawer;