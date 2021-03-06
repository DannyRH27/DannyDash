import React from 'react';
import SearchDropdown from './search_dropdown';
import { FaSearch } from "react-icons/fa";
import { withRouter } from 'react-router-dom';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchResults: null,
      openDropdown: false,
      fragment: "",
    };

    this.handleFocus = this.handleFocus.bind(this);
    this.handleBlur = this.handleBlur.bind(this);
    this.handleInput = this.handleInput.bind(this);
    this.closeDropdown = this.closeDropdown.bind(this);
    this.handleEnter = this.handleEnter.bind(this);
    this.handleSearchSubmit = this.handleSearchSubmit.bind(this);
  }

  closeDropdown() {
    this.setState({ openDropdown: false, fragment: "", searchResults: null });
  }

  handleFocus(e) {
    e.currentTarget.placeholder = "";
  }

  handleBlur(e) {
    const { currentUser } = this.props;
    e.currentTarget.placeholder = "Search For Restaurants"
  }

  handleInput(e) {
    if (e.target.value === "") {
      this.setState({ openDropdown: false, fragment: "", searchResults: null });
    } else {
      this.search(e.target.value);
      this.setState({ fragment: e.target.value, openDropdown: true });
    }
  }

  handleEnter(e) {
    if (e.key === "Enter") {
      if (
        this.props.history.location.pathname.slice(0, 7) === "/search" &&
        this.state.fragment !== ""
      ) {
        this.handleSearchSubmit();
        window.location.reload();
      } else {
        this.handleSearchSubmit();
      }
    }
  }

  handleSearchSubmit() {
    this.closeDropdown();
    if (this.state.fragment !== "") {
      this.props.history.push(`/search/${this.state.fragment}`);
    }
  }

  search(fragment) {
    $.ajax({
      method: "GET",
      url: `/api/stores/search/`,
      data: { fragment: fragment },
    }).then((res) => {
      this.setState({ searchResults: res });
    });
  }

  render() {
    const { fragment, searchResults, openDropdown } = this.state;
    return (
      <div className="search-bar-container">
        <FaSearch className="search-icon" />
        <input
          className="search-input"
          type="text"
          onChange={this.handleInput}
          onKeyPress={this.handleEnter}
          placeholder="Search For Restaurants"
          onFocus={this.handleFocus}
          onBlur={(e) => this.handleBlur(e)}
        />
        {openDropdown && searchResults ? (
          <SearchDropdown
            fragment={fragment}
            closeDropdown={this.closeDropdown}
            searchResults={searchResults}
          />
        ) : null}
      </div>
    );
  }
}

export default withRouter(SearchBar);