class AddWeightToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :weight, :decimal
  end
end
