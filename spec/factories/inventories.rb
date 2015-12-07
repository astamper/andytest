FactoryGirl.define do
  factory :inventory do
    inventory_name "MyString"
inventory_starting_amount 1.5
inventory_current_amount 1.5
inventory_unit "MyString"
expiration "2015-12-07"
lead_time_days 1.5
  end

end
