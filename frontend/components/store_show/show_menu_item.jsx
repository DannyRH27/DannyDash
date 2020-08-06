import React from 'react'

class ShowMenuItem extends React.Component{
    constructor(props){
        super(props)
        
    }

    handleClick(){
      const { openModal, item, receiveModalItem } = this.props;

      receiveModalItem(item)
      openModal()
    }

    render(){
        const {item, menu} = this.props
        if (item === null || item === undefined || item === false) return null;
        if (menu === null || menu === undefined || menu === false) return null;
        const itemImage = item.photoUrl ?  <img src={`${item.photoUrl}`} alt="" /> : null;
        return (
          <div onClick={() => this.handleClick()} className="menu-item-container">
            <div className="menu-item-box">
              <span className="secondary-foreground">
                <div className="second-inner-layer">
                  <div className="menu-item-info">
                    <div className="menu-item-name">
                      <p>{item.name}</p>
                    </div>
                    <span>{item.description}</span>
                    <p>${item.price.toFixed(2)}</p>
                  </div>
                  <div className="menu-item-picture-container">
                    <div className="menu-item-picture-box">
                      {itemImage}
                    </div>
                  </div>
                </div>
              </span>
            </div>
          </div>
        );
    }
}

export default ShowMenuItem;