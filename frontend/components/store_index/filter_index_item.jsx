import React from "react";

class FilterIndexItem extends React.Component {
  

  render(){
    const { filter } = this.props;
    if (filter === null || filter === undefined || filter === false) return;
    return (
      <div className="filter-item-container">
        <div className="filter-item">
          <img src={`${filter.photoUrl}`} />
          <span>{filter.filterTitle}</span>
        </div>
      </div>
    )
  }
}

export default FilterIndexItem;