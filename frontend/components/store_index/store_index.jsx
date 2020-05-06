import React from 'react'
import StoreIndexItem from './store_index_item';
import { Link } from 'react-router-dom';

class StoreIndex extends React.Component {
    constructor(props){
        super(props)
    }

    componentDidMount(){
        this.props.fetchStores();
    }
    render(){
        const {stores, fetchStores} = this.props
        if (!stores) return null;
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
                                            <Link to={`/stores/${store.id}`}>
                                                <StoreIndexItem fetchStores={fetchStores} store={store} />
                                            </Link>
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