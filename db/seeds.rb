puts "Seeding data ............................"

# Hotels 
transilvania = Hotel.create!(name: "Transilvania", image: "https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWwlMjBoYWxsfGVufDB8fDB8fHww&w=1000&q=80")

transilvania.rooms.create!(room_num: 1, available: 10, room_type: "single", image: "https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2luZ2xlJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80")
transilvania.rooms.create!(room_num: 2, available: 10, room_type: "double", image: "https://www.hotel7dublin.com/wp-content/uploads/Hotel-7-double-bedroom-1000x500_c.jpg")
transilvania.rooms.create!(room_num: 3, available: 10, room_type: "twin", image: "https://image-tc.galaxy.tf/wijpeg-3aprtv71u8gzdckzyi1xkwr5/deluxe-twin_wide.jpg?crop=0%2C98%2C1920%2C1080")
transilvania.rooms.create!(room_num: 4, available: 10, room_type: "suite", image: "https://w0.peakpx.com/wallpaper/244/784/HD-wallpaper-luxury-suite-hotel-honeymoon-bungalow-bedroom-bed-sea-suite-lagoon-beach-pink-blue.jpg")
transilvania.rooms.create!(room_num: 5, available: 10, room_type: "tripple", image: "https://www.maracaibohotel.it/images/gallery-int/tripla-standard-normal/hma_0024_23349.jpg")
transilvania.rooms.create!(room_num: 6, available: 10, room_type: "quad", image: "https://www.hiddenhills.com.tr/wp-content/uploads/2022/09/Oda-triple-superior-home-1.jpg")
transilvania.rooms.create!(room_num: 7, available: 10, room_type: "King", image: "https://e1.pxfuel.com/desktop-wallpaper/417/896/desktop-wallpaper-best-5-hotel-king-on-hip-hotel-room.jpg")
transilvania.rooms.create!(room_num: 8, available: 10, room_type: "queen", image: "https://www.redrockresort.com/wp-content/uploads/2020/12/RR-Standard-2-Queen.jpg")

happy_days_inn = Hotel.create!(name: "Happy Days Inn", image: "https://watermark.lovepik.com/photo/20211120/large/lovepik-the-hotel-lobby-picture_500420418.jpg")

happy_days_inn.rooms.create!(room_num: 1, available: 10, room_type: "single", image: "https://atlantic-parkhotel.de/images/Classic-EZ-Stadt-1920-x-1080.jpg")
happy_days_inn.rooms.create!(room_num: 2, available: 10, room_type: "double", image: "https://www.shutterstock.com/shutterstock/videos/15407836/thumb/1.jpg?ip=x480")
happy_days_inn.rooms.create!(room_num: 3, available: 10, room_type: "twin", image: "https://c1.wallpaperflare.com/preview/212/691/791/room-hotel-bed-double-bed.jpg")
happy_days_inn.rooms.create!(room_num: 4, available: 10, room_type: "suite", image: "https://c4.wallpaperflare.com/wallpaper/844/53/319/miami-florida-hotel-room-wallpaper-preview.jpg")
happy_days_inn.rooms.create!(room_num: 5, available: 10, room_type: "tripple", image: "https://www.centralhoteldonegal.com/wp-content/uploads/2020/07/triple.jpg")
happy_days_inn.rooms.create!(room_num: 6, available: 10, room_type: "quad", image: "https://c4.wallpaperflare.com/wallpaper/159/802/513/room-interior-home-house-wallpaper-preview.jpg")
happy_days_inn.rooms.create!(room_num: 7, available: 10, room_type: "King", image: "https://c4.wallpaperflare.com/wallpaper/1024/7/759/bed-interior-chair-bedroom-wallpaper-preview.jpg")
happy_days_inn.rooms.create!(room_num: 8, available: 10, room_type: "queen", image: "https://www.redrockresort.com/wp-content/uploads/2020/04/RR-Queen-Bedroom.jpg")  

comfort_deluxe = Hotel.create!(name: "Comfort Deluxe Hotel", image: "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8fDA%3D&w=1000&q=80")

comfort_deluxe.rooms.create!(room_num: 1, available: 10, room_type: "single", image: "https://c0.wallpaperflare.com/preview/195/45/103/apartment-bed-bedroom-chair.jpg")
comfort_deluxe.rooms.create!(room_num: 2, available: 10, room_type: "double", image: "https://c1.wallpaperflare.com/preview/967/606/545/bed-double-bed-hotel-room.jpg")
comfort_deluxe.rooms.create!(room_num: 3, available: 10, room_type: "twin", image: "https://www.hotelbotanique.com/userfiles/thumbs/3/clasic-twin-room_16360256770052_726x454_ttt_90.webp")
comfort_deluxe.rooms.create!(room_num: 4, available: 10, room_type: "suite", image: "https://img.freepik.com/free-photo/luxury-bedroom-suite-resort-high-rise-hotel-with-working-table_105762-1783.jpg")
comfort_deluxe.rooms.create!(room_num: 5, available: 10, room_type: "tripple", image: "https://www.hiddenhills.com.tr/wp-content/uploads/2022/09/Oda-Standart-home-2.jpg")
comfort_deluxe.rooms.create!(room_num: 6, available: 10, room_type: "quad", image: "https://c4.wallpaperflare.com/wallpaper/344/30/405/sofa-design-interior-design-apartment-wallpaper-preview.jpg")
comfort_deluxe.rooms.create!(room_num: 7, available: 10, room_type: "King", image: "https://cdn.cbeditz.com/cbeditz/preview/king-bed-room-hd-background-wallpaper-download-11636386616ezcse1ctl9.jpg")
comfort_deluxe.rooms.create!(room_num: 8, available: 10, room_type: "queen", image: "https://image-tc.galaxy.tf/wijpeg-b391ug7m67k3acykl7pgynkbf/newyorkhotel-dreamdowntown-dreamhotels-bq.jpg")

the_roost = Hotel.create!(name: "The Roost", image: "https://c4.wallpaperflare.com/wallpaper/360/515/601/night-in-las-vegas-bellagio-luxury-hotel-casino-hd-wallpapers-for-mobile-phones-laptops-and-pc-1920%C3%971080-wallpaper-preview.jpg")

the_roost.rooms.create!(room_num: 1, available: 10, room_type: "single", image: "https://c0.wallpaperflare.com/preview/195/45/103/apartment-bed-bedroom-chair.jpg")
the_roost.rooms.create!(room_num: 2, available: 10, room_type: "double", image: "https://c1.wallpaperflare.com/preview/967/606/545/bed-double-bed-hotel-room.jpg")
the_roost.rooms.create!(room_num: 3, available: 10, room_type: "twin", image: "https://www.hotelbotanique.com/userfiles/thumbs/3/clasic-twin-room_16360256770052_726x454_ttt_90.webp")
the_roost.rooms.create!(room_num: 4, available: 10, room_type: "suite", image: "https://w0.peakpx.com/wallpaper/244/784/HD-wallpaper-luxury-suite-hotel-honeymoon-bungalow-bedroom-bed-sea-suite-lagoon-beach-pink-blue.jpg")
the_roost.rooms.create!(room_num: 5, available: 10, room_type: "tripple", image: "https://www.maracaibohotel.it/images/gallery-int/tripla-standard-normal/hma_0024_23349.jpg")
the_roost.rooms.create!(room_num: 6, available: 10, room_type: "quad", image: "https://www.hiddenhills.com.tr/wp-content/uploads/2022/09/Oda-triple-superior-home-1.jpg")
the_roost.rooms.create!(room_num: 7, available: 10, room_type: "King", image: "https://e1.pxfuel.com/desktop-wallpaper/417/896/desktop-wallpaper-best-5-hotel-king-on-hip-hotel-room.jpg")
the_roost.rooms.create!(room_num: 8, available: 10, room_type: "queen", image: "https://www.redrockresort.com/wp-content/uploads/2020/12/RR-Standard-2-Queen.jpg")

palace_inn = Hotel.create!(name: "Palace Inn", image: "https://c4.wallpaperflare.com/wallpaper/624/380/1000/life-resort-hotel-resort-hotel-wallpaper-preview.jpg")

palace_inn.rooms.create!(room_num: 1, available: 10, room_type: "single", image: "https://c0.wallpaperflare.com/preview/195/45/103/apartment-bed-bedroom-chair.jpg")
palace_inn.rooms.create!(room_num: 2, available: 10, room_type: "double", image: "https://c1.wallpaperflare.com/preview/967/606/545/bed-double-bed-hotel-room.jpg")
palace_inn.rooms.create!(room_num: 3, available: 10, room_type: "twin", image: "https://www.hotelbotanique.com/userfiles/thumbs/3/clasic-twin-room_16360256770052_726x454_ttt_90.webp")
palace_inn.rooms.create!(room_num: 4, available: 10, room_type: "suite", image: "https://img.freepik.com/free-photo/luxury-bedroom-suite-resort-high-rise-hotel-with-working-table_105762-1783.jpg")
palace_inn.rooms.create!(room_num: 5, available: 10, room_type: "tripple", image: "https://www.hiddenhills.com.tr/wp-content/uploads/2022/09/Oda-Standart-home-2.jpg")
palace_inn.rooms.create!(room_num: 6, available: 10, room_type: "quad", image: "https://c4.wallpaperflare.com/wallpaper/344/30/405/sofa-design-interior-design-apartment-wallpaper-preview.jpg")
palace_inn.rooms.create!(room_num: 7, available: 10, room_type: "King", image: "https://cdn.cbeditz.com/cbeditz/preview/king-bed-room-hd-background-wallpaper-download-11636386616ezcse1ctl9.jpg")
palace_inn.rooms.create!(room_num: 8, available: 10, room_type: "queen", image: "https://image-tc.galaxy.tf/wijpeg-b391ug7m67k3acykl7pgynkbf/newyorkhotel-dreamdowntown-dreamhotels-bq.jpg")

# Customers
Customer.create!(name: "John", email:"john@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 1)
Customer.create!(name: "Mercy", email:"mercy@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 2)
Customer.create!(name: "Jane", email:"jane@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 3)
Customer.create!(name: "Jacob", email:"jacob@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 4)
Customer.create!(name: "Hilda", email:"hilda@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 5)
Customer.create!(name: "Fridah", email:"fridah@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 6)
Customer.create!(name: "Marion", email:"marion@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 7)
Customer.create!(name: "Peter", email:"peter@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 8)
Customer.create!(name: "Said", email:"said@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 9)
Customer.create!(name: "Hamzah", email:"hamzah@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 10)
Customer.create!(name: "Jarvis", email:"jarvis@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 11)
Customer.create!(name: "Getrude", email:"getrude@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 12)
Customer.create!(name: "Cynthia", email:"cynthia@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 13)
Customer.create!(name: "Kate", email:"kate@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 14)
Customer.create!(name: "Wema", email:"wema@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 15)
Customer.create!(name: "Catherine", email:"catherine@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 16)
Customer.create!(name: "Karma", email:"karma@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 17)
Customer.create!(name: "Cyntia", email:"cyntia@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 18)
Customer.create!(name: "Brenda", email:"brenda@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 19)
Customer.create!(name: "Sheila", email:"sheila@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 20)
Customer.create!(name: "Linda", email:"linda@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 21)
Customer.create!(name: "Merylinn", email:"merylinn@gmail.com", password: "doe", password_confirmation: "doe", date_in: "7/1/23", date_out: "7/30/23",room_id: 22)

Admin.create!(email: "admin@gmail.com", password: "admin123", password_confirmation: "admin123")
Admin.create!(email: "admin2@gmail.com", password: "admin123", password_confirmation: "admin123")


puts "...............................done seeding"