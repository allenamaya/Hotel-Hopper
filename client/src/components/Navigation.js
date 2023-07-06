import React, { useContext } from 'react'
import {Link} from 'react-router-dom'
import HotelContext from './HotelContext'
import { Button } from 'react-bootstrap'


const Navigation = () => {
  const {currentCustomer, setCurrentCustomer, currentAdmin, setCurrentAdmin} = useContext(HotelContext)


  function logOutCustomer(){
    fetch("/logout", {method: "DELETE"})
    .then(res => res.json())
    .then(data => console.log(data))
    setCurrentCustomer('')
    console.log("logging out")
  }

  function logOutAdmin(){
    fetch("/logout", {method: "DELETE"})
    setCurrentAdmin('')
    console.log("logging out")
  }

  if(currentCustomer){
    return (
    <div className='my-navigation'>
        <Link to="/"><i class="bi bi-house"></i> Home</Link>
        <Link to="/hotels"><i class="bi bi-buildings-fill"></i> Hotels</Link>
        <Link to="/logout"><Button onClick={logOutCustomer} variant='primary'>Logout</Button></Link>
    </div>
  )
  } else if(currentAdmin){
    return(
       <div className='my-navigation'>
        <Link to="/customers"><i class="bi bi-people-fill"></i> Customers</Link>
        <Link to="/logout"><Button onClick={logOutAdmin} variant='primary'>Logout</Button></Link>
    </div>
    )
   
  }else{
    return (
      <div className='my-navigation'>
          <Link to="/"><i class="bi bi-house"></i> Home</Link>
          <Link to="/hotels"><i class="bi bi-buildings-fill"></i> Hotels</Link>
          <Link to="/customer-login"><i class="bi bi-person"></i> Customer Log In</Link> 
      </div>
    )
  }

  
}

export default Navigation