import React from 'react';
import StoreIndexItem from './store_index_item';
import FilterIndexItem from './filter_index_item';
import { Link, withRouter } from 'react-router-dom';

class StoreIndex extends React.Component {
  constructor(props) {
    super(props)
    this._isMounted = false;
  }

  componentDidMount() {
    window.scrollTo(0, 0);
    const { fetchStores, fetchFilters, filterStores, searchStores, location, match } = this.props;
    this._isMounted = true;
    fetchFilters();
    if (location.pathname.slice(0,8) === "/filters" && this._isMounted) {
      filterStores(match.params.filter)
    } else if (location.pathname.slice(0,7) === "/search" && this._isMounted) {
      searchStores(match.params.fragment)
    }
  }

  componentWillUnmount(){
    this._isMounted = false;
  }
  
  componentDidUpdate(prevProps){
    const { location, filterStores, match } = this.props;
    const filter = match.params.filter
    if (location.pathname !== prevProps.location.pathname && location.pathname.slice(0,8) === "/filters") {
      filterStores(filter)
      window.scrollTo(0, 0);
    } 
  }
  

  render() {
    const { fetchCurrentUser, stores, fetchStore, fetchStores, filters, location, match, currentUser } = this.props
    // if (stores.length === 0) return null;
    const FilterHeader = 
      location.pathname.slice(0, 8) === "/filters" 
        ? (<span>{match.params.filter}</span>) 
        : location.pathname.slice(0, 7) === "/search" 
          ? (<span>Results for {match.params.fragment}...</span>) 
          : <span>All Restaurants</span>
    return (
      <div>
        <div className="store-index-container">
          <div className="store-index-box">
            <div className="filter-list-container">
              <div className="filter-list">
                <div className="filter-list-header">
                  {FilterHeader}
                  <span>{Object.keys(stores).length} STORES NEARBY</span>
                </div>
                <div className="filter-list-index">
                  {filters.map((filter) => (
                    <Link
                      key={filter.id}
                      to={`/filters/${filter.filterTitle.split(" ").join(" ")}`}
                    >
                      <FilterIndexItem filter={filter} />
                    </Link>
                  ))}
                </div>
              </div>
            </div>
            <div className="store-list-container">
              <div className="store-list">
                {stores.map((store) => (
                  <Link key={store.id} to={`/stores/${store.id}`}>
                    <StoreIndexItem
                      fetchCurrentUser={fetchCurrentUser}
                      fetchStore={fetchStore}
                      fetchStores={fetchStores}
                      store={store}
                      currentUser={currentUser}
                    />
                  </Link>
                ))}
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default withRouter(StoreIndex);