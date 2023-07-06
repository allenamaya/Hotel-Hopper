import React, { useEffect, useState} from 'react'

import SingleRoom from './SingleRoom'
import { Card } from 'react-bootstrap'
import { Rating } from 'react-simple-star-rating'
import {  useParams } from 'react-router-dom'

const Rooms = () => {

  const [myHotel, setMyHotel] = useState({})
  let {id} = useParams();

    useEffect(() => {
        fetch(`/hotels/${id}`)
        .then(res => res.json())
        .then(data => setMyHotel(data))
    }, [id])

    console.log(myHotel)

    if(myHotel.rooms){
      return (
        <div className='hotel-rooms-display'>
    
          <Card style={{width: "80%", margin: "auto"}}>
            <div><h2>{myHotel.name}</h2></div>
            <Card.Img src={myHotel.image} style={{maxHeight: "600px"}}></Card.Img>
            <Card.Body>
              <div className='head-section'>
                
              <Rating iconsCount={5} initialValue={4} size={25}/>
              </div>
              <div className='container'>
              <div className='prop-highlights'>
                <h3>Property highlights</h3>
                <li><bold><i class="bi bi-water"></i></bold> Swimming Pool</li>
                <li><i class="bi bi-wifi"></i> Free wifi</li>
                <li><i class="bi bi-door-open-fill"></i> Connecting rooms</li>
                <li><i class="bi bi-car-front-fill"></i> Parking</li>
                <li><i class="bi bi-fan"></i> Air conditioning</li>
                <li><i class="bi bi-cup-hot-fill"></i> Restaurant</li>
              </div>
              <div className='amenities-at-home'>
                <div>
                <h4>Amenities</h4>
                <ul>
                  <li>Daily housekeeping</li>
                  <li>Casino</li>
                  <li>6 restaurants and 2 poolside bars</li>
                  <li>4 bars/lounges</li>
                  <li>2 outdoor pools</li>
                  <li>Breakfast available</li>
                  <li>24-hour fitness centre</li>
                  <li>Valet parking</li>
                  <li>Seasonal outdoor pool</li>
                  <li>Spa tub</li>
                </ul>
                </div>
                <div>
                <h4>Feel at home</h4>
                <ul>
                  <li>Children stay free</li>
                  <li>Connecting/adjoining rooms available</li>
                  <li>Television</li>
                  <li>Daily housekeeping</li>
                  <li>Blackout curtains</li>
                </ul>
                </div>
              </div>
              </div>
             
            </Card.Body>
          </Card>
          <h3>Rooms</h3>
          <div className='container'>
            {myHotel.rooms.map(room => <SingleRoom room={room}/>)}
          </div>
        </div>
      ) 
                
    
    }
   

  
}

export default Rooms