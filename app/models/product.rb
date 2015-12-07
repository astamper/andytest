class Product < ActiveRecord::Base
  belongs_to :order
  has_many :components
end
