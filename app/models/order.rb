class Order < ActiveRecord::Base
  belongs_to :crm
  has_many :products
end
