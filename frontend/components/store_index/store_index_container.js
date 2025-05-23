import { connect } from "react-redux";
import { fetchFilters } from '../../actions/filter_actions';
import { fetchCurrentUser, update } from '../../actions/session_actions';
import {fetchStores, fetchStore, filterStores, searchStores } from '../../actions/store_actions';
import StoreIndex from './store_index';

const mapStateToProps = (state) => ({
    stores: Object.values(state.entities.stores),
    filters: Object.values(state.entities.filters),
    currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  fetchStores: () => dispatch(fetchStores()),
  fetchStore: (storeId) => dispatch(fetchStore(storeId)),
  fetchFilters: () => dispatch(fetchFilters()),
  filterStores: (filter) => dispatch(filterStores(filter)),
  searchStores: (fragment) => dispatch(searchStores(fragment)),
  fetchCurrentUser: () => dispatch(fetchCurrentUser()),
  update: (user) => dispatch(update(user)),
});

export default connect(mapStateToProps, mapDispatchToProps)(StoreIndex);