import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import axios from 'axios';

class GetData extends React.Component {
    constructor(props) {
      super(props)
      this.state = {
          data: [],
      }
    }
    
    componentDidMount(){
        
         axios('http://localhost:5500/api/v1/meetings').then(response => {
             console.log(response)
             this.setState({
                 data: response.data
             })
        }).catch(error => console.log(error));
    }

    render() {
        return (
            <div>
                {
                    this.state.data.map((dynamicData)=>{
                        return(
                        <div key={dynamicData.id} >
                            <p>{dynamicData.id} => {dynamicData.title} => {dynamicData.description}</p>
                        </div>
                        )
                   })
                }
            </div>
        );
    }
}

ReactDOM.render(<GetData/>, document.getElementById('root'));
