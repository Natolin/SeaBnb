# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(user_name: 'Chris', password: 'password', password_confirmation: 'password', email: 'a@a.a')


User.create(user_name: 'Piotr', password: 'password', password_confirmation: 'password', email: 'p@p.p')

# Boat.create(name: 'Super_Dan', location: 'barcelona', capacity: 4, price: 100, boat_type: 'yacht', user_id: 1, photo: "ftvx56r6ysn8jt86huc3")

# Boat.create(name: 'Nat', location: 'paris', capacity: 2, price: 500, boat_type: 'motor', user_id: 2)

# Boat.create(name: 'Super Nat', location: 'paris', capacity: 2, price: 500, boat_type: 'motor', user_id: 2)

# Boat.create(name: 'Chris', location: 'paris', capacity: 2, price: 500, boat_type: 'motor', user_id: 2)

# Boat.create(name: 'Super Chris', location: 'paris', capacity: 2, price: 500, boat_type: 'motor', user_id: 2)

# Boat.create(name: 'Syd', location: 'paris', capacity: 2, price: 500, boat_type: 'motor', user_id: 2)

# Boat.create(name: 'Super Syd', location: 'paris', capacity: 2, price: 500, boat_type: 'motor', user_id: 2)

Boat.create(name: 'Jess', location: '16 Villa Gaudelet, Paris', capacity: 2, price: 500, boat_type: 'motor', user_id: 2)

Boat.create(name: 'Super Jess', location: 'Marienplatz 2, Munich', capacity: 2, price: 500, boat_type: 'motor', user_id: 2)
