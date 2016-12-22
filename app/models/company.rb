class Company < ActiveRecord::Base
  has_many :orders, dependent: :destroy
  has_many :users, dependent: :destroy
  has_many :rates, dependent: :destroy
  belongs_to :courier
end
