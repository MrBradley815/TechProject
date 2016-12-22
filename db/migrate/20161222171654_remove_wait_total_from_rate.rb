class RemoveWaitTotalFromRate < ActiveRecord::Migration
  def change
    remove_column :rates, :waitTotal, :decimal
  end
end
