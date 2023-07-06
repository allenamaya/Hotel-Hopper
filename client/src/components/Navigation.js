import React from 'react'
import {Link} from 'react-router-dom'

const Navigation = () => {
  return (
    <div className='my-navigation'>
        <Link to="/">Home</Link>
        <Link to="/hotels">Hotels</Link>
        <Link to="/customers">Customers</Link>
    </div>
  )
}

export default Navigation