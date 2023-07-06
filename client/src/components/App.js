import React, {  useState } from 'react'
import Hotels from './hotels/Hotels'
import {Routes, Route} from "react-router-dom"
import {Rooms, BookRoom, ShowBookingDetails} from './rooms'
import { Customers } from './customers'
import Navigation from './Navigation'
import HotelContext from './HotelContext'
import HotelView from './hotels/HotelView'

const App = () => {

  const [currentHotel, setCurrentHotel] = useState({})
  const [currentRoom, setCurrentRoom] = useState({})
  const [roomToBook, setRoomToBook] = useState({})
  const [bookingDetails, setBookingDetails] = useState({})
  const [dateIn, setDateIn] = useState(new Date())
  const [dateOut, setDateOut] = useState(new Date())
  const [defaultId, setDefaultId] = useState(1)


  
  return (
    <div>
          
          <Navigation />
          
          <div className='main-content'>
            <HotelContext.Provider value={{ defaultId, setDefaultId, dateIn, setDateIn, dateOut, setDateOut, currentHotel, setCurrentHotel, currentRoom, setCurrentRoom, roomToBook, setRoomToBook, bookingDetails, setBookingDetails}}>   
            
              <Routes>
                <Route exact path='/showBookingDetails' element={<ShowBookingDetails />} />
                <Route exact path='/bookRoom' element={<BookRoom />}/>
                <Route exact path="/" element={<Hotels />}/>
                <Route exact path="/hotels" element={<Hotels />}/>
                <Route exact path= "/hotels/:id" element={<Rooms />}/>
                <Route exact path="/myHotel" element={<HotelView />}/>
                <Route exact path="/customers" element={<Customers/>} /> 
              </Routes>
          </HotelContext.Provider>
          </div>
        
      
    </div>
  )
}

export default App