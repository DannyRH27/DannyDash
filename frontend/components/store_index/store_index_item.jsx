import React from 'react'
import { IoIosCheckmarkCircle } from "react-icons/io";
import { AiFillStar } from "react-icons/ai";


export const StoreIndexItem = (props) => {
    const {store} = props
    return(
        <div className='index-item-container'>
            {/* need to wrap in Link later */}
            <div className='index-item-pictures'>
                <div className='picture-container'>
                    <div className='picture-card'>
                        <img className='index-picture' src={`${store.photoUrl[0]}`} alt="" />
                    </div>
                </div>
                <div className='picture-container'>
                    <div className='picture-card'>
                        <img className='index-picture' src={`${store.photoUrl[1]}`} alt="" />
                    </div>
                </div>
            </div>
            <div className='index-item-info'>
                <div className='info-container'>
                    <div className='info-title'>
                        <span>{store.name}</span>
                        <p><IoIosCheckmarkCircle /></p>
                    </div>
                    <div className='info-filters'>
                        <span> $ • DoorDash CSS Game Too Strong (Filters will go here eventually)</span>
                    </div>
                    <div className='info-misc'>
                        <div className='info-review'>
                            <span>5.0</span>
                            <p><AiFillStar /></p>
                            <span> 10000+ ratings</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default StoreIndexItem;