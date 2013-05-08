class Brand < ActiveRecord::Base
  has_many :vehicles
  has_many :customers, :through => :vehicles, :uniq => true
  attr_accessible :name

  def total_vehicles
    vehicles.size # => vehicles.count
  end
end
