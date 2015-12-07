class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :component_name
      t.float :component_amount
      t.string :component_unit
      t.references :product, index: true

      t.timestamps
    end
  end
end
