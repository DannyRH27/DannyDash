import React from 'react';

class CartIndex extends React.Component {
  constructor(props){
    super(props)

    this.state = {
      contents: {},
      customer_id: null,
      store_id: null,
    }
  }

  render(){
    return null;
  }
}
// What if i threaded through the modal
// On click, add item to cart contents hash
// Need to thread dispatch through props
// Grab state from Redux store.