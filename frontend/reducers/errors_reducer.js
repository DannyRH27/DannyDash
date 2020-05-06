import { combineReducers } from "redux";
import sessionErrorsReducer from "./session_errors_reducer";
import storeErrorsReducer from "./store_errors_reducer";


const errorsReducer = combineReducers({
    session: sessionErrorsReducer,
    store: storeErrorsReducer
});

export default errorsReducer;
