FactoryGirl.define do
  factory :order do
    shipping_address "MyString"
fufillment_date "2015-12-07"
fufillment_time "2015-12-07 05:15:04"
fufillment_status "MyString"
order_amount 1.5
order_unit "MyString"
per_unit_price 1.5
crm nil
  end

end
