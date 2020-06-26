import React from 'react';
import { withRouter } from 'react-router-dom';
import { FaMapMarkerAlt } from "react-icons/fa";

class AddressDropdown extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      address: null,
    };

    this.handleFocus = this.handleFocus.bind(this);
    this.handleBlur = this.handleBlur.bind(this);
    this.handleInput = this.handleInput.bind(this);
    this.handleEnter = this.handleEnter.bind(this);
  }
  componentDidMount() {
    window.addEventListener("click", this.props.closeDropdown);
  }

  componentWillUnmount() {
    window.removeEventListener("click", this.props.closeDropdown);
  }

  handleFocus(e) {
    e.currentTarget.placeholder = "";
  }

  handleBlur(e) {
    const { currentUser } = this.props;
    e.currentTarget.placeholder = "e.g. 123 John Doe Lane, San Francisco CA 94110";
  }

  handleInput(e) {
    this.setState({ address: e.target.value });
  }

  handleEnter(e) {
    // e.preventDefault();
    const { currentUser, update, closeDropdown } = this.props;
    const newUser = Object.assign({}, currentUser);
    newUser.address = this.state.address;
    update(newUser).then(() => {
      closeDropdown();
      window.location.reload();
    });
  }

  render() {
    const { currentUser, closeDropdown, openDropdown } = this.props;
    const placeholdertext = currentUser
      ? "e.g. 123 John Doe Lane, San Francisco CA 94110"
      : "Please sign in/sign up";
    const Dropdown = currentUser ? (
      <input
        onChange={this.handleInput}
        placeholder={placeholdertext}
        type="text"
        pattern="(\w.+\s.+\s\w+)"
        title="123 John Doe Lane, San Francisco CA 94110"
        onFocus={this.handleFocus}
        onBlur={(e) => this.handleBlur(e)}
      />
    ) : (
      <input
        onChange={this.handleInput}
        placeholder={placeholdertext}
        type="text"
        id="disabled"
        disabled
      />
    );
    return (
      <div
        className={`address-dropdown ${openDropdown ? "animate-dropdown" : ""}`}
        onClick={(e) => e.stopPropagation()}
      >
        <form onSubmit={this.handleEnter}>
          <div className="address-dropdown-input">
            <FaMapMarkerAlt />
            {Dropdown}
          </div>
          <div className="submit-container">
            <input
              className="address-dropdown-submit"
              value="Submit"
              type="submit"
            />
          </div>
        </form>
      </div>
    );
  }
}

export default withRouter(AddressDropdown);