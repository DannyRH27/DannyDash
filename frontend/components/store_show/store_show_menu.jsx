import React from 'react'
import ShowMenuItem from './show_menu_item';

class StoreShowMenu extends React.Component{
    constructor(props){
        super(props)
    }

    render(){
        const {menu, items, openModal, receiveModalItem} = this.props
        if (menu === null || menu === undefined || menu === false) return null;
        if (items === null || items === undefined || items === false) return null;
        const menuItems = menu.itemIds.map((id) => items[id] )
        return (
          <div className="menu-box">
            <h2 className="anchor" id={`#${menu.title.split(" ").join("")}`}>
              {menu.title}
            </h2>
            <div className="menu-item-list-container">
              {menuItems.map((item, idx) => (
                <ShowMenuItem receiveModalItem={receiveModalItem} openModal={openModal} menu={menu} item={item} key={idx} />
              ))}
            </div>
          </div>
        );  
    }
}

export default StoreShowMenu;