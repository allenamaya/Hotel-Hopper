import React, {useState, useContext} from 'react'
import { Form, Button } from 'react-bootstrap'
import { useNavigate } from 'react-router'
import HotelContext from '../HotelContext'

const AdminLogin = () => {

  const navigate = useNavigate()

  const {currentAdmin, setCurrentAdmin} = useContext(HotelContext)
  const [formData, setFormData] = useState({
    email: "Enter email",
    password: "Enter password"
  })

  function logIn(){
    fetch("/login", {
      method: "POST",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify(formData)
    })
    .then(res => {if(res.ok){
      res.json().then(user => setCurrentAdmin(user))
      navigate("/customers")
    }else{ 
      alert("Wrong password")
     navigate('/admin-login')
    }})
  

    setFormData({
      email: "",
      password: ""
    })
    
  }

  function handleChange(event){
    setFormData({...formData, [event.target.name]: event.target.value})
  }

  console.log(currentAdmin)

  return (
    <div>
        <Form className='login-form'>
          <h2>Admin</h2>
          <Form.Group className="mb-3" controlId="formGroupEmail">
              <Form.Label>Email address</Form.Label>
              <Form.Control type="email" name="email" placeholder={formData.email} onChange={handleChange} />
          </Form.Group>
          <Form.Group className="mb-3" controlId="formGroupPassword">
              <Form.Label>Password</Form.Label>
              <Form.Control type="password" name="password" placeholder={formData.password} onChange={handleChange} />
          </Form.Group>
          <Form.Group>
              <Form.Label><Button variant='success' onClick={logIn}>Login</Button></Form.Label>
          </Form.Group>
    </Form>
    </div>
  )
}

export default AdminLogin