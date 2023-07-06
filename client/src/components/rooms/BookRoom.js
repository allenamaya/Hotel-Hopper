import React, { useContext, useState } from 'react'
import HotelContext from '../HotelContext'
import { Form, Button, Col, Row, ButtonGroup} from 'react-bootstrap'
import { useNavigate } from 'react-router-dom'
import Calendar from 'react-calendar'; 



const BookRoom = () => {
    const {roomToBook, dateIn, setDateIn, dateOut, setDateOut, currentCustomer, setCurrentCustomer} = useContext(HotelContext)
    const navigate = useNavigate()
    let dateDiff = (dateOut.getTime() - dateIn.getTime()) / (1000 * 60 * 60 * 24)
    let price = Math.round((dateDiff * 30))

    console.log(dateIn);

    const[formData, setFormData] = useState({
        email: currentCustomer.email,
        room_id: roomToBook.id
    })

    function handleChange(event){
        setFormData({...formData, [event.target.name]: event.target.value})
    }

    function bookRoom(){
        if(currentCustomer){
            fetch(`/customers/${currentCustomer.id}`,{
                method: "PATCH",
                headers: {"Content-Type": "application/json"},
                body: JSON.stringify({...formData,
                    date_in: dateIn.toLocaleDateString(),
                    date_out: dateOut.toLocaleDateString(),
                })
            })
            .then(res => {
                if(res.ok){
                    res.json().then(user => setCurrentCustomer(user))
                    navigate("/showBookingDetails")
                }
                else{
                    console.log(res.json())
                    navigate("/")
                }
            })
        }else{
            navigate("/customer-login")
        }
        
    }

    function goBack(){
        navigate(-1)
    }
    console.log(roomToBook)
    return (
        <div className='book-container'>
            
            <Form >
                <Form.Group as={Row} className='mb-3'>
                    <Form.Label><h4>Your Chosen room type: {roomToBook.room_type} </h4> </Form.Label>
                </Form.Group>
                <Form.Group as={Row} className="mb-3">
                    <Form.Label column sm="2">
                     Email:
                    </Form.Label>
                    <Col sm="10">
                    <Form.Control type='email' name="email"  placeholder={formData.email} onChange={handleChange}/>
                    </Col>
                </Form.Group>
                <Form.Group as={Row} className="mb-3">
                    <Form.Label column sm="2">
                     Select date in
                    </Form.Label>
                    <Col sm="10">
                    <Calendar onChange={setDateIn} value={dateIn} shouldCloseOnSelect={true}/>
                    </Col>
                </Form.Group>
                <Form.Group as={Row} className="mb-3">
                    <Form.Label column sm="2">
                     Date in
                    </Form.Label>
                    <Col sm="10">
                    {dateIn.toLocaleDateString()}
                    </Col>
                </Form.Group>
                <Form.Group as={Row} className="mb-3">
                    <Form.Label column sm="2">
                     Select date out
                    </Form.Label>
                    <Col sm="10">
                    <Calendar onChange={setDateOut} value={dateOut} shouldCloseOnSelect={true}/>
                    </Col>
                </Form.Group>
                <Form.Group as={Row} className="mb-3">
                    <Form.Label column sm="2">
                     Date out
                    </Form.Label>
                    <Col sm="10">
                    {dateOut.toLocaleDateString()}
                    </Col>
                </Form.Group>

                <Form.Group as={Row} className="mb-3" controlId="formPlaintextPassword">
                    <Form.Label column sm="2">
                        Room Number
                    </Form.Label>
                    <Col sm="10">
                    <Form.Control type="number"  readOnly placeholder={roomToBook.id} />
                    </Col>
                    <Form.Label column sm="2">
                        Amount to be paid: 
                    </Form.Label>
                    <Col sm="10"><h3>$ {price}</h3></Col>
                    <ButtonGroup className='button-group'>
                        <div className='book-button'>
                        <Button variant='primary' style={{width: "fit-content"}} onClick={goBack}>Go back</Button>
                        </div>
                        <div className='book-button'>
                        <Button variant='success' style={{width: "fit-content"}} onClick={bookRoom}>Book room</Button>
                        </div>
                    </ButtonGroup>
                    
                </Form.Group>
            </Form>
        </div>
    )
}

export default BookRoom