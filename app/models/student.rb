class Student < ActiveRecord::Base
  belongs_to :seat
  attr_accessible :first_name, :last_name, :seat

  def name
  	return "#{first_name} #{last_name}"
  end
end
