class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category
      t.string :product_name
      t.references :order, index: true

      t.timestamps
    end
  end
end
