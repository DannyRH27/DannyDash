import React from 'react';
import { withRouter } from 'react-router-dom';
import { GiKnifeFork } from "react-icons/gi";
import { FaSearch } from "react-icons/fa";

class SearchDropdown extends React.Component {
  componentDidMount() {
    window.addEventListener('click', this.props.closeDropdown)
  }

  componentWillUnmount() {
    window.removeEventListener('click', this.props.closeDropdown)
  }
  
  showFiveResults(objects) {
    console.log(objects)
    if (Object.values(objects).length > 0) {
      return Object.values(objects).slice(0, 5).map((object) =>
        <div
          key={object.id}
          className="search-dropdown-item"
          onClick={() => {
            this.props.closeDropdown();
            const searchBar = document.querySelector(".search-input");
            searchBar.value = '';
            this.props.history.push(`/stores/${object.id}`);
          }}>
          <div className="search-item-content">
            <GiKnifeFork />
            <div className="search-item-info">
              <div>{object.name}</div>
            </div>
            <div>
            </div>
          </div>
        </div>
      )
    } else {
      return <div className="no-results">No results</div>;
    }
  }

  render() {
    const { searchResults, fragment } = this.props;
    return (
      <div className="search-dropdown" onClick={(e) => e.stopPropagation()}>
        {this.showFiveResults(searchResults)}
        <div
          className="index-search-link"
          onClick={() => {
            this.props.history.push(`/search/${fragment}`);
            this.props.closeDropdown();
          }}
        >
          <FaSearch />
          <p>{`Results for "${fragment}"...`}</p>
        </div>
      </div>
    );
  }
}

export default withRouter(SearchDropdown);