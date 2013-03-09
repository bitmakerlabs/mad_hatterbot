# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Adding the seats
(0..3).each do |row|
  column_count = row==0 ? 8 : 6
  (0..column_count-1).each do |column|
    Seat.create row: row, column: column
  end
end

# Adding the students
students = YAML.load(File.open (Rails.root.join "db", "assets", "students.yml"))["students"]
students.each do |s|
  names = s.split(' ');
  Student.create!(
    first_name: names[0],
    last_name: names[1]
  )
end
