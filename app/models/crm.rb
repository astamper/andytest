class Crm < ActiveRecord::Base
  has_many :orders
  validates_formatting_of :crm_phone_number, using: :us_phone
end
