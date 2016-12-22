class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.decimal :normHour
      t.decimal :normFirst
      t.decimal :normPerMile
      t.decimal :holHour
      t.decimal :holFirst
      t.decimal :holPerMile
      t.decimal :ahHour
      t.decimal :ahFirst
      t.decimal :ahPerMile
      t.decimal :weight
      t.decimal :weightFree
      t.decimal :weightCost
      t.decimal :weightTotal
      t.decimal :wait
      t.decimal :waitFree
      t.decimal :waitCost
      t.decimal :waitTotal
      t.references :courier, index: true
      t.references :company, index: true

      t.timestamps
    end
  end
end
