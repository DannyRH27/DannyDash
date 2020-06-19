import React from 'react';
import { withRouter } from 'react-router-dom';
import { FaMapMarkerAlt } from "react-icons/fa";

class AddressDropdown extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      address: null
    }
    this.handleInput = this.handleInput.bind(this);
    this.handleEnter = this.handleEnter.bind(this);
  }
  componentDidMount() {
    window.addEventListener('click', this.props.closeDropdown)
  }

  componentWillUnmount() {
    window.removeEventListener('click', this.props.closeDropdown)
  }

  handleInput(e) {
    this.setState({ address: e.target.value })
  }

  handleEnter(e) {
    const { currentUser, update, closeDropdown } = this.props;
    if (currentUser && e.key === 'Enter' && this.state.address !== '') {
      const newUser = Object.assign({}, currentUser)
      newUser.address = this.state.address
      update(newUser)
        .then(()=> {
          closeDropdown();
          window.location.reload();
        })
    }
  }

  render() {
    const { currentUser, closeDropdown } = this.props;
    const placeholdertext = currentUser ? "Please enter a new address" : "Please sign in/sign up"
    const Dropdown = currentUser ? (
      <input
        onChange={this.handleInput}
        onKeyPress={this.handleEnter}
        placeholder={placeholdertext}
        type="text"
      ></input>
    ) : (
      <input
        onChange={this.handleInput}
        onKeyPress={this.handleEnter}
        placeholder={placeholdertext}
        type="text"
        disabled
      ></input>
    );
    return (
      <div className="address-dropdown" onClick={(e) => e.stopPropagation()}>
        <div
          className="address-dropdown-input"
        >
          <FaMapMarkerAlt />
          {Dropdown}
        </div>
      </div>
    );
  }
}

export default withRouter(AddressDropdown);