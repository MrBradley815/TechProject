class AddWaitToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :wait, :decimal
  end
end
