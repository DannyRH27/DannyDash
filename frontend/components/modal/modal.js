import React from "react";
import { closeModal, openModal } from "../../actions/modal_actions";
import { connect } from "react-redux";
import { BsX } from "react-icons/bs";

function Modal({ modal, closeModal, openModal, item }) {

  if (!modal) {
    return null;
  }
  return (
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
        </div>
      </div>
    </div>
  );
}

const mapStateToProps = (state) => {
  return {
    modal: state.ui.modal,
    item: state.entities.modalItem
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    closeModal: () => dispatch(closeModal()),
    openModal: () => dispatch(openModal()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);
