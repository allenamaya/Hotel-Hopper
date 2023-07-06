import React, { useEffect, useState } from 'react'

const HotelView = () => {
    const [myHotel, setMyHotel] = useState({})

    useEffect(() => {
        fetch("/hotels/2")
        .then(res => res.json())
        .then(data => setMyHotel(data))
    }, [])

    console.log(myHotel)

  return (
    <div>HotelView</div>
  )
}

export default HotelView