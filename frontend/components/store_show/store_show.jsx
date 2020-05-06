import React from 'react'


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
        if (!store) return null;
        return(
            <div className='store-show-container'>
                <div className='store-show-box'>
                    <div className='store-show-card'>

                    </div>
                    {store.name}
                </div>
            </div>
        )
    }
}
export default StoreShow;