class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :first
      t.string :last
      t.string :phone
      t.string :email
      t.string :password_digest
      t.references :courier, index: true

      t.timestamps
    end
  end
end
