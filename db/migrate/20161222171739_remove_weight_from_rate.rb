class RemoveWeightFromRate < ActiveRecord::Migration
  def change
    remove_column :rates, :weight, :decimal
  end
end
