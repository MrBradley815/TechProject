class RemoveUsernameFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :username, :string
  end
end
