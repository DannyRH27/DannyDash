import React from 'react';

class UserShow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      user: {
        fname: "",
        lname: "",
        email: "",
        phoneNumber: "",
        address: "",
      },
      disabled: true,
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return (e) =>{
      var user = {...this.state.user}
      const fields = Object.entries(this.state.user);

      user[field] = e.currentTarget.value
      this.setState({user})
      
      this.setState({disabled: false})      

    }
  }

  handleSubmit() {
    const { update, currentUser } = this.props;
    const user = Object.assign({}, currentUser)
    const fields = Object.entries(this.state.user)

    fields.filter(field => {
      if (field[1] !== "") {
        user[field[0]] = field[1]
      }
    })
    
    update(user)
  }

  render() {
    const { currentUser } = this.props;
    return (
      <div className="user-show-container">
        <div className="profile-container">
          <div className="profile-edit-module">
            <div className="profile-edit-header">
              <h2>Profile</h2>
            </div>
            <div className="profile-edit-details">
              <div className="profile-edit-field">
                <h2>First Name</h2>
                <input
                  onChange={this.update("fname")}
                  type="text"
                  placeholder={currentUser.fname}
                  value={this.state.fname}
                />
              </div>
              <div className="profile-edit-field">
                <h2>Last Name</h2>
                <input
                  onChange={this.update("lname")}
                  type="text"
                  placeholder={currentUser.lname}
                  value={this.state.lname}
                />
              </div>
              <div className="profile-edit-field">
                <h2>Email</h2>
                <input
                  onChange={this.update("email")}
                  type="text"
                  placeholder={currentUser.email}
                  value={this.state.email}
                />
              </div>
              <div className="profile-edit-field">
                <h2>Phone Number</h2>
                <input
                  onChange={this.update("phoneNumber")}
                  type="text"
                  placeholder={currentUser.phoneNumber}
                  value={this.state.phoneNumber}
                />
              </div>
              <div className="profile-edit-field">
                <h2>Address</h2>
                <input
                  onChange={this.update("address")}
                  id="address-field"
                  type="text"
                  placeholder={`${
                    currentUser.address
                      ? currentUser.address
                      : "Please enter an address"
                  }`}
                  value={this.state.address}
                />
              </div>
            </div>
            <div className="profile-edit-save">
              <button id="save-button" onClick={this.handleSubmit} disabled={this.state.disabled}>
                Save
              </button>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default UserShow;