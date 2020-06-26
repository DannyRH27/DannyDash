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

  handleSubmit(e) {
    e.preventDefault();
    const { update, currentUser } = this.props;
    const user = Object.assign({}, currentUser)
    const fields = Object.entries(this.state.user)

    fields.filter(field => {
      if (field[1] !== "") {
        user[field[0]] = field[1]
      }
    })
    
    update(user).then(()=> window.location.reload())

  }

  render() {
    const { currentUser, errors, clearErrors } = this.props;
    const SessionErrors = errors[0] ? (
      <div id="update-errors" className="session-errors"> {errors[0]} </div>
    ) : null;
    return (
      <div className="user-show-container">
        <div className="profile-container">
          <div className="profile-edit-module">
            <div className="profile-edit-header">
              <h2>Profile</h2>
            </div>
            <form onSubmit={this.handleSubmit}>
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
                    pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"
                    title="johndoe@gmail.com"
                  />
                </div>
                <div className="profile-edit-field">
                  <h2>Phone Number</h2>
                  <input
                    onChange={this.update("phoneNumber")}
                    type="tel"
                    placeholder={currentUser.phoneNumber}
                    value={this.state.phoneNumber}
                    pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
                    title="XXX-XXX-XXXX"
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
                    pattern="(\w.+\s.+\s\w+)"
                    title="123 John Doe Lane, San Francisco CA 94110"
                  />
                </div>
              </div>
              {SessionErrors}
              <div className="profile-edit-save">
                <input
                  id="save-button"
                  type="submit"
                  disabled={this.state.disabled}
                  value="Save"
                />
              </div>
            </form>
          </div>
        </div>
      </div>
    );
  }
}

export default UserShow;