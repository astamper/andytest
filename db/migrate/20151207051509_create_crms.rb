class CreateCrms < ActiveRecord::Migration
  def change
    create_table :crms do |t|
      t.string :crm_first_name
      t.string :crm_last_name
      t.string :crm_phone_number
      t.string :crm_email

      t.timestamps
    end
  end
end
