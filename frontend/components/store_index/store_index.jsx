import React from 'react';
import StoreIndexItem from './store_index_item';
import FilterIndexItem from './filter_index_item';
import { Link, withRouter } from 'react-router-dom';

class StoreIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    const { fetchStores, fetchFilters, filterStores, location, match } = this.props;
    fetchStores();
    fetchFilters();
    if (location.pathname.slice(0,8) === "/filters") {
      filterStores(match.params.filter)
    }
  }
  
  componentDidUpdate(prevProps){
    const { location, filterStores, match } = this.props;

    if (location.pathname !== prevProps.location.pathname && location.pathname.slice(0,8) === "/filters") {
      filterStores(match.params.filter)
    }
  }

  render() {
    const { stores, fetchStores, filters } = this.props
    if (stores === null || stores === undefined || stores === false) return null;
    if (filters === null || filters === undefined || filters === false) return null;
    return (
      <div>
        <div className='store-index-container'>
          <div className='store-index-box'>
            <div className='filter-list-container'>
              <div className='filter-list'>
                <div className='filter-list-header'>
                  <span>All Restaurants</span>
                  <span>{Object.keys(stores).length} STORES NEARBY</span>
                </div>
                <div className='filter-list-index'>
                    {filters.map(filter => (
                        <Link key={filter.id} to={`/filters/${filter.filterTitle.split(" ").join(" ")}`}>
                          <FilterIndexItem filter={filter} />
                        </Link>
                    ))}
                </div>
              </div>
            </div>
            <div className='store-list-container'>
              <div className='store-list'>
                  {stores.map(store => (
                      <Link key={store.id}to={`/stores/${store.id}`}>
                        <StoreIndexItem fetchStores={fetchStores} store={store} />
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