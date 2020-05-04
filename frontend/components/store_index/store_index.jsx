import React from 'react'
import StoreIndexItem from './store_index_item';

class StoreIndex extends React.Component {
    constructor(props){
        super(props)
    }

    componentDidMount(){
        this.props.fetchStores();
    }
    render(){
        const {stores} = this.props
        return(
            <div>
                <div className='store-index-container'>
                    <div className='store-index-box'>
                        <div>
                            <div>
                                <div>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                        <div className='filter-list-container'>

                        </div>
                        <div className='store-list-container'>
                            <div className='store-list'>
                                <ul>
                                    {stores.map(store => (
                                        <li key={store.id}>
                                            
                                            <StoreIndexItem store={store} />
                                        </li>
                                    ))}
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                
            
        );
    }
}

export default StoreIndex;