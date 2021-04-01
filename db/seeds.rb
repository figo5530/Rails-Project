# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
filghts = Flight.create([
    {flight_number: 'CX897', from: 'JFK', from_city: 'New York', to: 'PVG', to_city: 'Shanghai', departure_time: 'May 11', arrival_time: 'May 12', flight_duration: '12hrs', price: 1965, seat_remain: 20 },
    {flight_number: 'CX326', from: 'LGA', from_city: 'New York', to: 'LAX', to_city: 'Los Angeles', departure_time: 'May 5', arrival_time: 'May 5', flight_duration: '6hrs', price: 234, seat_remain: 20 },
    {flight_number: 'CX797', from: 'BOS', from_city: 'Boston', to: 'BEK', to_city: 'Beijing', departure_time: 'May 11', arrival_time: 'May 12', flight_duration: '12hrs', price: 1679, seat_remain: 20 },
    {flight_number: 'AL899', from: 'LAX', from_city: 'Los Angeles', to: 'XMN', to_city: 'Xiamen', departure_time: 'Apr 11', arrival_time: 'Apr 12', flight_duration: '12hrs', price: 1369, seat_remain: 20 },
    {flight_number: 'UA897', from: 'EWR', from_city: 'New York', to: 'BOS', to_city: 'Boston', departure_time: 'May 11', arrival_time: 'May 11', flight_duration: '3hrs', price: 122, seat_remain: 20 },
    {flight_number: 'UA357', from: 'LAX', from_city: 'Los Angeles', to: 'SZX', to_city: 'Shenzhen', departure_time: 'Jun 1', arrival_time: 'Jun 2', flight_duration: '13hrs', price: 1847, seat_remain: 20 },
    {flight_number: 'DL297', from: 'JFK', from_city: 'New York', to: 'SZX', to_city: 'Shenzhen', departure_time: 'May 7', arrival_time: 'May 8', flight_duration: '14hrs', price: 1642, seat_remain: 20 },
    {flight_number: 'NK1482', from: 'LAX', from_city: 'Los Angeles', to: 'SFO', to_city: 'San Francisco', departure_time: 'Apr 3', arrival_time: 'Apr 3', flight_duration: '1hrs', price: 69, seat_remain: 20 },
    {flight_number: 'AS406', from: 'SFO', from_city: 'San Francisco', to: 'EWR', to_city: 'New York', departure_time: 'May 4', arrival_time: 'May 4', flight_duration: '5hrs', price: 210, seat_remain: 20 },
    {flight_number: 'SB897', from: 'EWR', from_city: 'New York' ,to: 'PVG', to_city: 'Shanghai', departure_time: 'Apr 21', arrival_time: 'Apr 22 ', flight_duration: '12hrs', price: 1543, seat_remain: 20 },
    {flight_number: 'B61573', from: 'SFO', from_city: 'San Francisco', to: 'LAX', to_city: 'Los Angeles', departure_time: 'May 3', arrival_time: 'May 3', flight_duration: '5hrs', price: 189, seat_remain: 20 },
    {flight_number: 'WN4643', from: 'BOS', from_city: 'Boston', to: 'SFO', to_city: 'San Francisco', departure_time: 'Jun 21', arrival_time: 'Jun 22', flight_duration: '7hrs', price: 483, seat_remain: 20 },
    {flight_number: 'AA2580', from: 'JFK', from_city: 'New York', to: 'BEK', to_city: 'Beijing', departure_time: 'May 1', arrival_time: 'May 2', flight_duration: '15hrs', price: 1354, seat_remain: 20 },
    {flight_number: 'MF823', from: 'BOS', from_city: 'Boston', to: 'EWR', to_city: 'New York', departure_time: 'Apr 7', arrival_time: 'Apr 7', flight_duration: '3hrs', price: 369, seat_remain: 20 }
])
