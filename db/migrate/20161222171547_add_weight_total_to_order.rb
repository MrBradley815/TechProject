class AddWeightTotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :weightTotal, :decimal
  end
end
