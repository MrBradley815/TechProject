class Courier < ActiveRecord::Base
	has_many :admins, dependent: :destroy
	has_many :companies, dependent: :destroy
	has_many :rates
end
