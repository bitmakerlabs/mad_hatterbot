# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seats = Seat.create([
  { name: 'A' },
  { name: 'B' },
  { name: 'C' },
  { name: 'D' }
])

Student.create([
  {
    first_name: 'John',
    last_name: 'Doe',
    seat: seats[0]
  },
  {
    first_name: 'Jane',
    last_name: 'Doe',
    seat: seats[0]
  }
])
