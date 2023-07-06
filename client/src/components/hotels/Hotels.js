import React, {useState, useEffect}  from 'react'
import { SingleHotel } from './SingleHotel'
import LandingPage from "../LandingPage"


const Hotels = () => {

    const [hotels, setHotels] = useState([])    

    useEffect(() => {

        fetch("/hotels")
        .then(res => res.json())
        .then(data => setHotels([...data]))

    }, [])
  
    console.log(hotels);

  return (
    <div className='home-page'>
        <LandingPage />
        <h3>Looking for a place to spend the night?</h3>
        <h4>Check out our hotels and their rooms</h4>
        <div className='container'>
          {hotels.map(hotel => <SingleHotel hotel={hotel}/>)}  
        </div>
        
    </div>
  )
}

export default Hotels