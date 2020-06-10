import { connect } from "react-redux";
import { fetchFilters } from '../../actions/filter_actions';
import {fetchStores, fetchStore, filterStores } from '../../actions/store_actions';
import StoreIndex from './store_index';

const mapStateToProps = (state) => ({
    stores: Object.values(state.entities.stores),
    filters: Object.values(state.entities.filters)
});

const mapDispatchToProps = (dispatch) => ({
    fetchStores: () => dispatch(fetchStores()),
    fetchStore: storeId => dispatch(fetchStore(storeId)),
    fetchFilters: () => dispatch(fetchFilters()),
    filterStores: (filter) => dispatch(filterStores(filter))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoreIndex);