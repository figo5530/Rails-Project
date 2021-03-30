# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
filghts = Flight.create([
    {flight_number: 'CX897', from: 'JFK', to: 'PVG', departure_time: 'May 11', arrival_time: 'May 12', flight_duration: '12hrs', price: '500$' },
    {flight_number: 'CX887', from: 'JFK', to: 'PVG', departure_time: 'May 10', arrival_time: 'May 11', flight_duration: '12hrs', price: '500$' },
    {flight_number: 'CX877', from: 'JFK', to: 'PVG', departure_time: 'May 9', arrival_time: 'May 10', flight_duration: '12hrs', price: '500$' },
    {flight_number: 'CX867', from: 'JFK', to: 'PVG', departure_time: 'May 18', arrival_time: 'May 9', flight_duration: '12hrs', price: '500$' }
])
