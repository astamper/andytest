require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :shipping_address => "Shipping Address",
      :fufillment_status => "Fufillment Status",
      :order_amount => 1.5,
      :order_unit => "Order Unit",
      :per_unit_price => 1.5,
      :crm => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Shipping Address/)
    expect(rendered).to match(/Fufillment Status/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Order Unit/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
