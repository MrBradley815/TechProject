class RemoveDistanceFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :distance, :string
  end
end
