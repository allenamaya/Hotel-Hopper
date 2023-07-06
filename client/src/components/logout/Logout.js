import React from 'react'
import { Form, Button } from 'react-bootstrap'
import { useNavigate } from 'react-router'

const Logout = () => {

    const navigate = useNavigate()

    function home(){
        navigate("/")
    }
  return (
    <div>
        <Form className='login-form'>
            <Form.Group>
                <Form.Label><h2>You have been logged out!</h2></Form.Label>
            </Form.Group>
            <Form.Group>
                <Form.Label><Button variant='primary' onClick={home}>Home</Button></Form.Label>
            </Form.Group>
        </Form>
    </div>
  )
}

export default Logout