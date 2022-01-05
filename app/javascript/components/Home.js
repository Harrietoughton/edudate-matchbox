import React from 'react';
import Registration from './auth/Registration';

class Home extends React.Component {
  render() {
    return (
      <div>
        <h1>Home</h1>
        <Registration />
      </div>
    );
  }
}

export default Home;
