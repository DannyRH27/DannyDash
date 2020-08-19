import React from "react";
import ReactDOM from "react-dom";
import Root from "./components/root";
import configureStore from "./store/store";

document.addEventListener("DOMContentLoaded", () => {
	let preloadedState = undefined;
	if (window.currentUser) {
		preloadedState = {
            entities: {
                stores: {}
            },
			session: {
				currentUser: window.currentUser
			},
			errors: {
				session: []
			}
		};
	}
	const store = configureStore(preloadedState);

	const root = document.getElementById("root");
  ReactDOM.render(<Root store={store}/>, root);
  
})
