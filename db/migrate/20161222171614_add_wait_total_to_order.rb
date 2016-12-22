class AddWaitTotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :waitTotal, :decimal
  end
end
