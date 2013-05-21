class AddNewAtributesToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :price, :decimal
    add_column :vehicles, :milleage, :integer
    add_column :vehicles, :year, :integer
    add_column :vehicles, :fuel_type, :string
  end
end
