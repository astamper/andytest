class Order < ActiveRecord::Base
  belongs_to :crm
  has_many :products
  has_many :manufactorings
end
