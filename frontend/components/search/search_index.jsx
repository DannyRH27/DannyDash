import React from 'react';
import { withRouter } from 'react-router-dom';
import ShowEventItem from "../artists/show_event_item";

class SearchIndex extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchResults: null
    }
  }

  search = async function (fragment) {
    let results = {};
    axios.post("/api/artists/search", { fragment })
      .then(res => {
        results.artists = res.data;
        axios.post("/api/events/search", { fragment })
          .then(res => {
            results.events = res.data;
            this.setState({ searchResults: results })
          })
      })
  }

  componentDidMount() {
    this.search(this.props.match.params.fragment);
  }

  render() { 
    const { match, history } = this.props;
    const { searchResults } = this.state;
    if (!searchResults) return null;
    return null;
  } 
}

export default withRouter(SearchIndex);