import { connect } from "react-redux";
import {fetchStores, fetchStore} from '../../actions/store_actions'
import Splash from './splash'

const mapStateToProps = (state) => ({
  stores: state.entities.stores
});

const mapDispatchToProps = (dispatch) => ({
  fetchStores: () => dispatch(fetchStores()),
  fetchStore: (storeId) => dispatch(fetchStore(storeId)),
  fetchFilters: () => dispatch(fetchFilters()),
  filterStores: (filter) => dispatch(filterStores(filter)),
  searchStores: (fragment) => dispatch(searchStores(fragment)),
  fetchCurrentUser: () => dispatch(fetchCurrentUser()),
});

export default connect(mapStateToProps, mapDispatchToProps)(Splash);