class Seat < ActiveRecord::Base
  attr_accessible :name
  has_one :student

  def self.change_places!
  	students = Student.all
  	Seat.transaction do
	  	Seat.all.each do |s|
	  		s.student = students.sample
	  		s.save!
	  		students.delete s.student
	  	end
  	end
  end
end
