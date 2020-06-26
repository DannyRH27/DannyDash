import React from 'react';
import ActiveOrderIndexItem from './active_order_index_item';
import PreviousOrderIndexItem from './previous_order_index_item';
import { Link } from 'react-router-dom';
class OrderIndex extends React.Component {
  constructor(props){
    super(props)
  }


  render(){
    const { orders } = this.props;
    if (orders === undefined) return null;
    return (
      <div className="order-index-container">
        <div className="order-index">
          <span>Orders</span>
          <span className="order-index-header">Active Orders</span>
          <div className="order-index-list">
            {Object.values(orders).reverse().map((order) => (
              <Link key={order.id} to={`/orders/${order.id}`}>
                <ActiveOrderIndexItem order={order} />
              </Link>
            ))}
          </div>
          <span className="order-index-header">Previous Orders</span>
          <div className="order-index-list">
            {Object.values(orders).reverse().map((order) => (
              <Link key={order.id} to={`/orders/${order.id}`}>
                <PreviousOrderIndexItem order={order} />
              </Link>
            ))}
          </div>
        </div>
      </div>
    );
  }
}

export default OrderIndex;