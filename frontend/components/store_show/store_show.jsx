import React from 'react'
import { IoIosCheckmarkCircle } from "react-icons/io";
import { FaStar } from "react-icons/fa";
import { RiFileTransferLine } from 'react-icons/ri';

class StoreShow extends React.Component{
    constructor(props){
        super(props)
    }
    
    componentDidMount(){
        const {storeId} = this.props
        this.props.fetchStore(storeId)
    }

    render(){
        const {store} = this.props
        if (store === null || store === undefined || store === false) return null;
        return(
            <div className='store-show-container'>
                <div className='store-show-box'>
                    <div className='store-info'>
                        <header>
                            <div className='store-header-container'>
                                <div className='store-header-info'>
                                    <div className='danny-pass'>
                                        <p><IoIosCheckmarkCircle/> </p>
                                        <span>Free Delivery with DannyPass</span>
                                    </div>
                                    <h1>{store.name}</h1>
                                    <span>Open Hours: {store.hours[0]}</span>
                                    <div className='store-show-rating'>
                                        <div className='star-rating'>
                                            <p><FaStar /></p> 
                                            <p><FaStar /></p> 
                                            <p><FaStar /></p> 
                                            <p><FaStar /></p> 
                                            <p><FaStar /></p> 
                                        </div>
                                        <span>5.0 (14264 Ratings)</span>
                                    </div>
                                </div>
                                <div className='delivery-header-container'>
                                    <div className='delivery-header-info'>
                                        <div>
                                            <span>Free</span>
                                            <p>Delivery</p>
                                        </div>
                                        <div>
                                            <span>1 - 2</span>
                                            <p>hours</p>
                                        </div>
                                        <div>
                                            <span>2.0</span>
                                            <p>miles</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </header>
                        <div className='menu-search-container'>
                            <div className='menu-search-bar'>
                                {store.menus.map((menu, idx) => (
                                    <a key={idx} href={`#${menu}`}>
                                        {menu}
                                    </a>
                                )) }
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        )
    }
}
export default StoreShow;