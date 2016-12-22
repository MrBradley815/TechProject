class RemoveWeightFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :weight, :string
  end
end
