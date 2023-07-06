import React, { useContext } from 'react'
import {useNavigate} from "react-router-dom"
import { Card, Button } from 'react-bootstrap'
import HotelContext from '../HotelContext'
import { Rating } from 'react-simple-star-rating'

const SingleRoom = ({room}) => {
  const { setRoomToBook} = useContext(HotelContext)
    const navigate = useNavigate()


  function bookRoom(){
    setRoomToBook(room);
    navigate("/bookRoom")
}

  return (
    <Card className='room'>
    <Card.Body>
        <h5>{room.room_type}</h5>
        <Card.Img src={room.image} ></Card.Img>
        <Card.Text>
            <div className='book-button'>
                <h5>Rooms available: {room.available}</h5>   
            </div>
              <h5>Pricing per night: $30</h5>
            <div className='rating'>
                  <Rating iconsCount={5} initialValue={4} size={23}/>
              </div>
            </Card.Text>
            <Card.Footer>
            <div className='book-button'>
                <Button variant='success' onClick={bookRoom}>Book Room</Button> 
            </div>
            </Card.Footer>
    </Card.Body>
    </Card>
  )
}

export default SingleRoom