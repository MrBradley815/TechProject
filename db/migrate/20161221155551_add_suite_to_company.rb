class AddSuiteToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :suite, :string
  end
end
