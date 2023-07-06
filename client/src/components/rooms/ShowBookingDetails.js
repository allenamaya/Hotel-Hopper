import React, { useContext } from 'react'
import HotelContext from '../HotelContext'
import { Form, Button } from 'react-bootstrap'
import { useNavigate } from 'react-router-dom'

const ShowBookingDetails = () => {
    const {bookingDetails, dateIn, dateOut} = useContext(HotelContext)
    let dateDiff = (dateOut.getTime() - dateIn.getTime()) / (1000 * 60 * 60 * 24)
    let price = dateDiff * 30
    const navigate = useNavigate()

    console.log(dateDiff);

    function backHome(){
      navigate("/")
    }
  return (
    <div className='details-form-container'>
        <Form className='details-form'>
          <Form.Label ><h3>Booking Details</h3></Form.Label>
            <Form.Label ><h4 className='row'><div className='col'>Customer name: </div> <div className='col'>{bookingDetails.name}</div></h4></Form.Label>
          <Form.Label ><h4 className='row'><div className='col'>Room number: </div> <div className='col'>{bookingDetails.room.id}</div></h4></Form.Label>
          <Form.Label ><h4 className='row'><div className='col'>Room type: </div> <div className='col'>{bookingDetails.room.room_type}</div></h4></Form.Label>
          <Form.Label ><h4 className='row'><div className='col'>Date In: </div> <div className='col'>{dateIn.toLocaleDateString()}</div></h4></Form.Label>

          <Form.Label ><h4 className='row'><div className='col'>Date out: </div> <div className='col'>{dateOut.toLocaleDateString()}</div></h4></Form.Label>
          
          <Form.Label ><h4 className='row'><div className='col'>Amount to be paid: </div> <div className='col'><h4>${price}</h4></div></h4></Form.Label>

          <Button onClick={backHome} variant='primary' style={{}}><i class="bi bi-house-door-fill"> Home</i></Button>
        </Form>
    </div>
  )
}

export default ShowBookingDetails