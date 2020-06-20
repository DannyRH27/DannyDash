import React from 'react';
import OrderIndexItem from './order_index_item';
class OrderIndex extends React.Component {
  constructor(props){
    super(props)
  }


  render(){
    const { orders } = this.props;
    return(
      <div className="order-index-container">
        <div className="order-index">
          <span>Orders</span>
          <span>Previous Orders</span>
          <div className="order-index-list">
            {Object.values(orders).map(order => (
              <OrderIndexItem key={order.id} order={order} />
            ))}
          </div>
        </div>
      </div>
    )
  }
}

export default OrderIndex;