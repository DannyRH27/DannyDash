import { connect } from "react-redux";
import {fetchStores, fetchStore} from '../../actions/store_actions'
import StoreIndex from './store_index'

const mapStateToProps = (state) => ({
    stores: Object.values(state.entities.stores)
});

const mapDispatchToProps = (dispatch) => ({
    fetchStores: () => dispatch(fetchStores()),
    fetchStore: storeId => dispatch(fetchStore(storeId))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoreIndex);