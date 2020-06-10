import React from 'react';
import StoreIndexItem from './store_index_item';
import FilterIndexItem from './filter_index_item';
import { Link, withRouter } from 'react-router-dom';

class StoreIndex extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      stores: null
    }
  }

  componentDidMount() {
    const { fetchStores, fetchFilters, filterStores, location, match } = this.props;
    fetchFilters();
    if (location.pathname.slice(0,8) === "/filters") {
      filterStores(match.params.filter)
        .then( stores => this.setState({ stores: stores}))
    } else {
      fetchStores()
        .then(stores => this.setState({ stores: stores}))
    }
  }
  
  componentDidUpdate(prevProps){
    const { location, filterStores, match } = this.props;
    const filter = match.params.filter
    if (location.pathname !== prevProps.location.pathname && location.pathname.slice(0,8) === "/filters") {
      filterStores(filter)
      .then(stores => this.setState({ stores: stores}))
    }
    window.scrollTo(0, 0);
  }

  render() {
    const { stores, fetchStores, filters, location, match } = this.props
    if (stores === null || stores === undefined || stores === false) return;
    if (filters === null || filters === undefined || filters === false) return;

    const FilterHeader = location.pathname.slice(0, 8) === "/filters" ? (<span>{match.params.filter}</span>) : <span>All Restaurants</span>
    return (
      <div>
        <div className='store-index-container'>
          <div className='store-index-box'>
            <div className='filter-list-container'>
              <div className='filter-list'>
                <div className='filter-list-header'>
                  {FilterHeader}
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