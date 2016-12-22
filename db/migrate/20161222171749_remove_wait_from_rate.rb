class RemoveWaitFromRate < ActiveRecord::Migration
  def change
    remove_column :rates, :wait, :decimal
  end
end
