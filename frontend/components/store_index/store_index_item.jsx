import React from 'react'
import { IoIosCheckmarkCircle } from "react-icons/io";
import { AiFillStar } from "react-icons/ai";
import { withRouter } from "react-router-dom"

class StoreIndexItem extends React.Component {
  constructor(props) {
    super(props)
  }

  render() {
    const { store } = this.props
    if (store === null || store === undefined || store === false) return null;
    if (store.filters === undefined) return null;
    const tags = store.filters.map((filter, idx) => <p key={idx}>{filter}, &nbsp;</p> )
    tags[tags.length - 1] = store.filters[store.filters.length-1].substr(0, store.filters[store.filters.length-1].length)

    const IndexItem = 
    this.props.location.pathname === "/" ? (
      <div className="local-item-card">
          <div 
            className="local-item-picture" 
            style={{ backgroundImage: `url(${store.photoUrls[0]})`}}>
          </div>
          <div className='local-item-description'>
            <span>{store.name}</span>
            <p><IoIosCheckmarkCircle /></p>
          </div>
      </div>
      ) :
      (
          <div className='index-item-container'>
            <div className='index-item-pictures'>
              <div className='picture-container'>
                <div className='picture-card'>
                  <img className='index-picture' src={`${store.photoUrls[0]}`} alt="" />
                </div>
              </div>
              <div className='picture-container'>
                <div className='picture-card'>
                  <img className='index-picture' src={`${store.photoUrls[1]}`} alt="" />
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
                  <span> $ • &nbsp; {tags} </span>
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
    return (
      <div>
        {IndexItem}
      </div>
    )
  }
}

export default withRouter(StoreIndexItem);