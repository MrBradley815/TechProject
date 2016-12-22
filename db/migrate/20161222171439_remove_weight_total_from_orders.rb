class RemoveWeightTotalFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :weightTotal, :string
  end
end
