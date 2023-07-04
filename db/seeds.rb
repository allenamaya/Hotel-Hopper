puts "Seeding data ............................"

# Hotels 
transilvania = Hotel.create!(name: "Transilvania")

transilvania.rooms.create!(room_num: 1, occupied: true)
transilvania.rooms.create!(room_num: 2, occupied: true)
transilvania.rooms.create!(room_num: 3, occupied: true)
transilvania.rooms.create!(room_num: 4, occupied: true)
transilvania.rooms.create!(room_num: 5, occupied: true)
transilvania.rooms.create!(room_num: 6, occupied: true)
transilvania.rooms.create!(room_num: 7, occupied: true)
transilvania.rooms.create!(room_num: 8, occupied: true)

domingo = Hotel.create!(name: "Domingo")

domingo.rooms.create!(room_num: 1, occupied: true)
domingo.rooms.create!(room_num: 2, occupied: true)
domingo.rooms.create!(room_num: 3, occupied: true)
domingo.rooms.create!(room_num: 4, occupied: true)
domingo.rooms.create!(room_num: 5, occupied: true)
domingo.rooms.create!(room_num: 6, occupied: true)
domingo.rooms.create!(room_num: 7, occupied: true)
domingo.rooms.create!(room_num: 8, occupied: true)

cecile = Hotel.create!(name: "Cecil")

cecile.rooms.create!(room_num: 1, occupied: true)
cecile.rooms.create!(room_num: 2, occupied: true)
cecile.rooms.create!(room_num: 3, occupied: true)
cecile.rooms.create!(room_num: 4, occupied: true)
cecile.rooms.create!(room_num: 5, occupied: true)
cecile.rooms.create!(room_num: 6, occupied: true)
cecile.rooms.create!(room_num: 7, occupied: false)
cecile.rooms.create!(room_num: 8, occupied: false)

# Customers
Customer.create!(name: "John", room_id: 1)
Customer.create!(name: "Mercy", room_id: 2)
Customer.create!(name: "Jane", room_id: 3)
Customer.create!(name: "Jacob", room_id: 4)
Customer.create!(name: "Hilda", room_id: 5)
Customer.create!(name: "Fridah", room_id: 6)
Customer.create!(name: "Marion", room_id: 7)
Customer.create!(name: "Peter", room_id: 8)
Customer.create!(name: "Said", room_id: 9)
Customer.create!(name: "Hamzah", room_id: 10)
Customer.create!(name: "Jarvis", room_id: 11)
Customer.create!(name: "Getrude", room_id: 12)
Customer.create!(name: "Cynthia", room_id: 13)
Customer.create!(name: "Kate", room_id: 14)
Customer.create!(name: "Wema", room_id: 15)
Customer.create!(name: "Catherine", room_id: 16)
Customer.create!(name: "Karma", room_id: 17)
Customer.create!(name: "Cyntia", room_id: 18)
Customer.create!(name: "Brenda", room_id: 19)
Customer.create!(name: "Sheila", room_id: 20)
Customer.create!(name: "Linda", room_id: 21)
Customer.create!(name: "Merylinn", room_id: 22)



puts "...............................done seeding"