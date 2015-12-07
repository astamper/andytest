class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :inventory_name
      t.float :inventory_starting_amount
      t.float :inventory_current_amount
      t.string :inventory_unit
      t.date :expiration
      t.float :lead_time_days

      t.timestamps
    end
  end
end
