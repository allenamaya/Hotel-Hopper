import React, {  useState } from 'react'
import Hotels from './hotels/Hotels'
import {Routes, Route} from "react-router-dom"
import {Rooms, BookRoom, ShowBookingDetails} from './rooms'
import { Customers } from './customers'
import Navigation from './Navigation'
import HotelContext from './HotelContext'
import HotelView from './hotels/HotelView'
import CustomerLogin from './customer-login/CustomerLogin'
import AdminLogin from './admin-login/AdminLogin'
import Logout from './logout/Logout'

const App = () => {

  const [currentHotel, setCurrentHotel] = useState({})
  const [currentRoom, setCurrentRoom] = useState({})
  const [roomToBook, setRoomToBook] = useState({})
  const [bookingDetails, setBookingDetails] = useState({})
  const [dateIn, setDateIn] = useState(new Date())
  const [dateOut, setDateOut] = useState(new Date())
  const [defaultId, setDefaultId] = useState(1)
  const [currentCustomer, setCurrentCustomer] = useState('');
  const [currentAdmin, setCurrentAdmin] = useState('')


  
  return (
    <div>
            <HotelContext.Provider value={{ currentAdmin, setCurrentAdmin, currentCustomer, setCurrentCustomer, defaultId, setDefaultId, dateIn, setDateIn, dateOut, setDateOut, currentHotel, setCurrentHotel, currentRoom, setCurrentRoom, roomToBook, setRoomToBook, bookingDetails, setBookingDetails}}>   
            <Navigation />
            <div className='main-content'>
              <Routes>
                <Route exact path='/showBookingDetails' element={<ShowBookingDetails />} />
                <Route exact path='/bookRoom' element={<BookRoom />}/>
                <Route exact path="/" element={<Hotels />}/>
                <Route exact path="/hotels" element={<Hotels />}/>
                <Route exact path= "/hotels/:id" element={<Rooms />}/>
                <Route exact path="/myHotel" element={<HotelView />}/>
                {currentAdmin ?<Route exact path="/customers" element={<Customers/>} />  : "/"} 
                <Route exact path="/customer-login" element={<CustomerLogin />} />
                <Route exact path="/admin-login" element={<AdminLogin />}/>
                <Route exact path="/logout" element={<Logout />} />
              </Routes>
            </div>
          </HotelContext.Provider>
         
        
      
    </div>
  )
}

export default App