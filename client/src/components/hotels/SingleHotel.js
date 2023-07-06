import React, { useContext } from 'react'
import {useNavigate} from "react-router-dom"
import {Card} from "react-bootstrap"
import {Rating} from "react-simple-star-rating"
import HotelContext from '../HotelContext'


export const SingleHotel = ({hotel}) => {

  const navigate = useNavigate()

  const {setCurrentHotel} = useContext(HotelContext)

  function viewRooms(){
    setCurrentHotel(hotel)
    navigate(`/hotels/${hotel.id}`)
  }

  return (
    <div>
      <Card className='hotel' onClick={viewRooms}>
        <Card.Body>
            <h5>{hotel.name}</h5>
            <Card.Img src={hotel.image} onClick={viewRooms}></Card.Img>
            <Card.Text>Location: Nairobi</Card.Text>
            <Rating iconsCount={5} initialValue={4} size={23}/>
        </Card.Body>
    </Card>
    </div>
    
  )
}
