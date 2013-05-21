class AddVipToCustomers < ActiveRecord::Migration
  def change
    change_table :customers do |t|
      t.boolean :vip#, :null => false
    end
  end
end
