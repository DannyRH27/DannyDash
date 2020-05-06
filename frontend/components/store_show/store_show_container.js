import { connect } from 'react-redux';

import { fetchStore } from '../../actions/store_actions';
import { selectReviewsForStore, selectStore } from '../../reducers/selectors';
import StoreShow from './store_show'

const mapStateToProps = (state, { match }) => {
    const storeId = parseInt(match.params.storeId);
    const store = selectStore(state.entities, storeId);
    // const reviews = selectReviewsForStore(state.entities, store);
    return {
        storeId,
        store
        // reviews
    };
};

const mapDispatchToProps = dispatch => ({
    fetchStore: id => dispatch(fetchStore(id)),
    fetchStores: () => dispatch(fetchStores())
});

export default connect(mapStateToProps, mapDispatchToProps)(StoreShow);
