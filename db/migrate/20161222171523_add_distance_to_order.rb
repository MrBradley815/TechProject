class AddDistanceToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :distance, :decimal
  end
end
