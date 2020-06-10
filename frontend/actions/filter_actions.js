import * as FilterAPIUtil from '../util/filter_api_util';
export const RECEIVE_FILTERS = "RECEIVE_FILTERS";

const receiveFilters = (filters) => ({
  type: RECEIVE_FILTERS,
  filters
});


export const fetchFilters = () => (dispatch) => (
  FilterAPIUtil.fetchFilters()
    .then((filters) => dispatch(receiveFilters(filters)))
);
