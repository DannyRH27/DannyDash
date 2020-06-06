import React from "react";
import { withRouter } from "react-router-dom";
import { updateCart, fetchCart } from "../../actions/cart_actions";
import { closeModal, openModal } from "../../actions/modal_actions";
import { connect } from "react-redux";
import { BsX } from "react-icons/bs";

class Modal extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      quantity: 1
    }
    this.AddToCart = this.AddToCart.bind(this);
  }

  AddToCart(){
    const { cart, updateCart, currentUser, item } = this.props;
    const storeId = this.props.location.pathname.split("/")[2]
    const newItem = Object.assign({}, item)
    const newCart = Object.assign({},cart)
    newItem["quantity"] = this.state.quantity
    console.log(newItem)
    // console.log(newCart)
    // console.log(typeof newCart.storeId)
    // console.log(typeof storeId)
    if (newCart.storeId.toString() !== storeId) {
      newCart.contents = {}
    } 
    newCart.store_id = storeId
    newCart.contents[newItem.name] = newItem
  
    updateCart(newCart)
  }


  render(){
    const { modal, closeModal, item, cart, updateCart } = this.props;
    // console.log(item)
    const ModalShow = modal ? (
      <div className="modal-background" onClick={closeModal}>
      <div className="modal-child" onClick={(e) => e.stopPropagation()}>
        <div className="modal-item-container">
          <div className="modal-closer">
            <p className="modal-icon" onClick={closeModal}>
              <BsX />
            </p>
          </div>
          <h1>{item.name}</h1>
          <span>{item.description}</span>
          <div>
            <img src={`${item.photoUrl}`} />
          </div>
          <button onClick={this.AddToCart}>Tester</button>
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
