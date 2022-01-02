import React from "react"
import PropTypes from "prop-types"
class HelloNell extends React.Component {
  render () {
    return (
      <React.Fragment>
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

HelloNell.propTypes = {
  greeting: PropTypes.string
};
export default HelloNell
