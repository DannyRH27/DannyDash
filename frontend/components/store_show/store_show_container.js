import { connect } from 'react-redux';
import {fetchMenus} from '../../actions/menu_actions'
import {fetchItems} from '../../actions/item_actions'
import { fetchStore } from '../../actions/store_actions';
import { selectReviewsForStore, selectStore} from '../../reducers/selectors';
import StoreShow from './store_show'

const mapStateToProps = (state, { match }) => {
    const storeId = parseInt(match.params.storeId);
    const store = selectStore(state.entities, storeId);
    const menus = state.entities.menus;
    const items = state.entities.items;
    // const reviews = selectReviewsForStore(state.entities, store);
    return {
        storeId,
        store,
        menus,
        items
    };
};

const mapDispatchToProps = dispatch => ({
    fetchMenus: id => dispatch(fetchMenus(id)),
    fetchStore: id => dispatch(fetchStore(id)),
    fetchStores: () => dispatch(fetchStores()),
    fetchItems: id => dispatch(fetchItems(id))
});

export default connect(mapStateToProps, mapDispatchToProps)(StoreShow);
