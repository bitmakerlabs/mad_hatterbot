class Student < ActiveRecord::Base
  belongs_to :seat
  attr_accessible :first_name, :last_name, :seat
end
