import React from "react";
import { withRouter } from "react-router-dom";
import { updateCart, fetchCart } from "../../actions/cart_actions";
import { closeModal, openModal } from "../../actions/modal_actions";
import { connect } from "react-redux";
import { FiPlusCircle, FiMinusCircle } from "react-icons/fi";
import { BsX } from "react-icons/bs";

class Modal extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      quantity: 1
    }
    this.AddToCart = this.AddToCart.bind(this);
    this.SubtractOne = this.SubtractOne.bind(this);
    this.AddOne = this.AddOne.bind(this);
  }

  SubtractOne(){
    let value = this.state.quantity
    this.setState({ quantity: value - 1})
  }

  AddOne(){
    let value = this.state.quantity
    this.setState({ quantity: value + 1})
  }

  AddToCart(){
    const { currentUser, cart, updateCart, closeModal, item } = this.props;
    if (!currentUser) {
      this.props.history.push("/login")
      closeModal();
      return;
    } 
    
    const storeId = this.props.location.pathname.split("/")[2]
    const newItem = Object.assign({}, item)
    const newCart = Object.assign({},cart)
    newItem["quantity"] = this.state.quantity
    newItem["id"] = Object.values(newCart.contents).length
    if (newCart.storeId === null || newCart.storeId.toString() !== storeId) {
      newCart.store_id = storeId
      newCart.contents = {}
    } 
    newCart.contents[newItem.id] = newItem
  
    updateCart(newCart)
    closeModal()
    this.setState({ quantity: 1 });
  }


  render(){
    const { modal, closeModal, item, cart, updateCart } = this.props;
    const CartItemPrice = parseFloat(item.price) * parseFloat(this.state.quantity);
    const ModalShow = modal ? (
      <div className="modal-background" onClick={closeModal}>
        <div className="modal-child" onClick={(e) => e.stopPropagation()}>
          <div className="modal-item-container">
            <div className="modal-closer">
              <p className="modal-icon" onClick={closeModal}>
                <BsX />
              </p>
            </div>
            <div className="modal-item-details">
              <h1>{item.name}</h1>
              <span>{item.description}</span>
            </div>
            <div className="modal-image-container">
              <img src={`${item.photoUrl}`} />
            </div>
            <div className="modal-item-checkout-container">
              <div className="modal-item-checkout">
                <button
                  onClick={this.SubtractOne}
                  disabled={this.state.quantity === 1}
                >
                  <FiMinusCircle />
                </button>

                <p>{this.state.quantity}</p>
                <button>
                  <FiPlusCircle onClick={this.AddOne} />
                </button>
                <div className="modal-item-checkout-button">
                  <button onClick={this.AddToCart}>
                    Add to cart - ${CartItemPrice.toFixed(2)}
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    ) : null;

    return (
      <div>
        {ModalShow}
      </div>
    )
  }
}

const mapStateToProps = (state) => {
  return {
    modal: state.ui.modal,
    item: state.entities.modalItem,
    cart: state.entities.cart,
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    closeModal: () => dispatch(closeModal()),
    openModal: () => dispatch(openModal()),
    updateCart: (cart) => dispatch(updateCart(cart))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(withRouter(Modal));
