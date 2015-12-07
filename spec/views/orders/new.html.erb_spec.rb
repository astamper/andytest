require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :shipping_address => "MyString",
      :fufillment_status => "MyString",
      :order_amount => 1.5,
      :order_unit => "MyString",
      :per_unit_price => 1.5,
      :crm => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_shipping_address[name=?]", "order[shipping_address]"

      assert_select "input#order_fufillment_status[name=?]", "order[fufillment_status]"

      assert_select "input#order_order_amount[name=?]", "order[order_amount]"

      assert_select "input#order_order_unit[name=?]", "order[order_unit]"

      assert_select "input#order_per_unit_price[name=?]", "order[per_unit_price]"

      assert_select "input#order_crm_id[name=?]", "order[crm_id]"
    end
  end
end
