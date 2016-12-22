class CreateCouriers < ActiveRecord::Migration
  def change
    create_table :couriers do |t|
      t.string :name
      t.string :phone
      t.string :street
      t.string :suite
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
