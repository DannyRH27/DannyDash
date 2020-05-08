import React from 'react'
import ShowMenuItem from './show_menu_item'

class StoreShowMenu extends React.Component{
    constructor(props){
        super(props)
    }

    render(){
        const {menu, items} = this.props
        if (menu === null || menu === undefined || menu === false) return null;
        if (items === null || items === undefined || items === false) return null;
        // console.log(items)
        const menuItems = menu.itemIds.map((id) => items[id] )
        // console.log(menu.itemIds)
        // console.log(menuItems)
        return(
                <div className='menu-box'>
                    <h2>{menu.title}</h2>
                    <div className='menu-item-list-container'>
                        {menuItems.map((item, idx)=>(
                            <ShowMenuItem menu={menu} item={item} key={idx}/>
                        ))}
                    </div>
                </div>
        )  
    }
}

export default StoreShowMenu;