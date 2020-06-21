import React from 'react';
import AddressDropdown from './address_dropdown';

class AddressBar extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      openDropdown: false,
    }
    this.closeDropdown = this.closeDropdown.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  closeDropdown() {
    this.setState({ openDropdown: false });
  }

  handleClick(e) {
    e.stopPropagation();
    let value = !this.state.openDropdown;
    this.setState({ openDropdown: value })
  }

  render() {
    const { currentUser, update } = this.props;
    const { openDropdown } = this.state;
    const AddressPrompt = currentUser && currentUser.address ? null : ( 
      <div onClick={this.handleClick} className={`address-prompt ${openDropdown ? "animate-prompt" : ""}`}>
        Please enter an address
      </div> 
    )
    const Address =
      currentUser && currentUser.address ? (
        <span onClick={this.handleClick}>
          {currentUser.address}
        </span>
      ) : (
        <span onClick={this.handleClick}>
          Your Address
        </span>
      );
    return (
      <div className="address-input">
        <span>ASAP</span>
        <p>to</p>
        {Address}
        {AddressPrompt}
        <AddressDropdown
          currentUser = {currentUser}
          update = {update}
          openDropdown = {openDropdown}
          closeDropdown = {this.closeDropdown}
        /> 
      </div>
    )
  }
}

export default AddressBar