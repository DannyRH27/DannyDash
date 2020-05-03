import React from 'react'

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
                <ul>
                    {stores.map(store => (
                        <li>
                            {store.name}
                            <img src={`${store.photoUrl}`} alt=""/>
                        </li>
                    ))}
                </ul>
            </div>
        );
    }
}

export default StoreIndex;