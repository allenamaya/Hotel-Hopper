import React, { useEffect, useState } from 'react'
import { Table } from 'react-bootstrap';
import SingleCustomer from './SingleCustomer';

const Customers = () => {
    const[customers, setCustomers] = useState([])
    let totalCustomers = 0;
    if(customers){
        totalCustomers = customers.length
    }
    

    useEffect(
        () => {
            fetch("/customers")
            .then(res => res.json())
            .then(data => setCustomers([...data]))
        }, [totalCustomers]
    );
  return (
    <div>
        <div>
            <Table striped bordered hover >
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Room Number</th>
                    <th>Room Type</th>
                    <th>Date in</th>
                    <th>Date out</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                {customers.map(customer => <SingleCustomer customer={customer} setCustomers={setCustomers} customers={customers}/>)}
            </tbody>
                
            </Table>
            
        </div>
    </div>
  )
}

export default Customers