class CreateInventoriesOrders < ActiveRecord::Migration
  def change
    create_table :inventories_orders do |t|
      t.belongs_to :inventory, index: true
      t.belongs_to :order, index: true
    end
  end
end
