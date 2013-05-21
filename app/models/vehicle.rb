class Vehicle < ActiveRecord::Base
  belongs_to :brand
  belongs_to :vehicle_type
  belongs_to :customer
  attr_accessible :name, :brand_id, :vehicle_type_id, :customer_id, :price, :milleage, :year, :fuel_type

  validates :name, :brand_id, :year, :price, :fuel_type, :presence => {:message => 'no puede estar en blanco'}
  validates :price, :numericality => true, :allow_blank => true
  validates :milleage, :numericality => true, :allow_blank => true

#metodo que devuelve nombre completo
  def full_name
    "#{brand.name} - #{name} (#{vehicle_type.name})"    
  end

end
