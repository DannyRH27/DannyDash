import { combineReducers } from "redux";
import stores from './stores_reducer';


const entitiesReducer = combineReducers({
    stores,
});

export default entitiesReducer;
