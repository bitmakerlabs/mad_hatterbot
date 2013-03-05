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

students = YAML.load(File.open (Rails.root "db", "assets"))["students"]
students.each do |s|
  names = s.split(' ');
  Student.create!(
    first_name: names[0],
    last_name: names[1]
  )
end
