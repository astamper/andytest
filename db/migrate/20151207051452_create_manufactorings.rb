class CreateManufactorings < ActiveRecord::Migration
  def change
    create_table :manufactorings do |t|
      t.float :batch_amount
      t.string :batch_unit
      t.date :batch_date
      t.string :batch_status
      t.references :order, index: true

      t.timestamps
    end
  end
end
