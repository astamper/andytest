class Order < ActiveRecord::Base
  belongs_to :crm
  has_many :products
  has_many :manufactorings
  has_and_belongs_to_many :inventories
end
