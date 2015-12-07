require 'rails_helper'

RSpec.describe "inventories/index", type: :view do
  before(:each) do
    assign(:inventories, [
      Inventory.create!(
        :inventory_name => "Inventory Name",
        :inventory_starting_amount => 1.5,
        :inventory_current_amount => 1.5,
        :inventory_unit => "Inventory Unit",
        :lead_time_days => 1.5
      ),
      Inventory.create!(
        :inventory_name => "Inventory Name",
        :inventory_starting_amount => 1.5,
        :inventory_current_amount => 1.5,
        :inventory_unit => "Inventory Unit",
        :lead_time_days => 1.5
      )
    ])
  end

  it "renders a list of inventories" do
    render
    assert_select "tr>td", :text => "Inventory Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Inventory Unit".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
