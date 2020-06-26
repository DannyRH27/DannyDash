import React from "react";
import { IoIosCheckmarkCircle } from "react-icons/io";

function ActiveOrderIndexItem(props) {
  const { order } = props;
  const date = new Date();
  const deliveredDate = new Date(order.deliveredDate);
  const month = date.getMonth();
  const months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];
  const day = deliveredDate.getDate();
  const year = deliveredDate.getFullYear();
  const strDate = `${months[month]} ${day} ${year}, ${
    order.deliveryEta
  }  •  $${order.total}`;
  const orderContents = Object.values(order.contents);
  const items = orderContents.map((item) => (
    <span key={item.id}>{item.name}, &nbsp;</span>
  ));
  items[items.length - 1] = (
    <span key={orderContents[orderContents.length - 1].id}>
      {orderContents[orderContents.length - 1].name.substr(
        0,
        orderContents[orderContents.length - 1].name.length
      )}
    </span>
  );
  const IndexItem =
    deliveredDate < date ? null : (
      <div className="order-index-item">
        <div className="order-item-title">
          <span>{order.store.name}</span>
          <IoIosCheckmarkCircle />
        </div>
        <span>{strDate}</span>
        <div id="order-item-summary">{items}</div>
      </div>
    )
  return <div>{IndexItem}</div>;
}

export default ActiveOrderIndexItem;
