import React from 'react'
import { Button } from 'react-bootstrap'
const SingleCustomer = ({customer, setCustomers, customers}) => {

    function checkOut(){
        fetch(`/customers/${customer.id}`, {
            method: "DELETE",
        })
        .then(res => res.json())
        .then(data => console.log(data))
        setCustomers(customers.filter(inCustomer => customer.id !== inCustomer.id))
    }
  return (
    <tr>
        <td>{customer.name}</td>
        <td>{customer.room.available}</td>
        <td>{customer.room.room_type}</td>
        <td>{customer.date_in}</td>
        <td>{customer.date_out}</td>
        <td><Button variant='warning' onClick={checkOut} className='checkout'>Check out</Button></td>
    </tr>
  )
}

export default SingleCustomer