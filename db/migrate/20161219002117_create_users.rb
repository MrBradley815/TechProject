class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :phone
      t.string :email
      t.string :password_digest
      t.references :company, index: true

      t.timestamps
    end
  end
end
