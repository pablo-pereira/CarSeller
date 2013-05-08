class VehicleType < ActiveRecord::Base
  has_many :vehicles
  attr_accessible :name
end
