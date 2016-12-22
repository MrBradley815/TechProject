class Admin < ActiveRecord::Base
  has_secure_password
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first, :last, :phone, presence: true
  validates :email, presence: true, format: { with: email_regex }, uniqueness: { case_sensitive: false }
  
  belongs_to :courier
end
