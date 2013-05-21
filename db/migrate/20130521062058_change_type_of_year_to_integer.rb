class ChangeTypeOfYearToInteger < ActiveRecord::Migration
  def up
    change_column :vehicles, :year, :integer
  end

  def down
  end
end
