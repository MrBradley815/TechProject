class RemoveWeightTotalFromRate < ActiveRecord::Migration
  def change
    remove_column :rates, :weightTotal, :decimal
  end
end
