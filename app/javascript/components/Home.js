import React from "react"
import Registration from "./auth/Registration";

class Home extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div>
          <h1>Home</h1>
          <Registration />
        </div>
      </React.Fragment>
    );
  }
}

export default Home
