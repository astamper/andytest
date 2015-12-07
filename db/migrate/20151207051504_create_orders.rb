class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :shipping_address
      t.date :fufillment_date
      t.time :fufillment_time
      t.string :fufillment_status
      t.float :order_amount
      t.string :order_unit
      t.float :per_unit_price
      t.references :crm, index: true

      t.timestamps
    end
  end
end
