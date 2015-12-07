require 'rails_helper'

RSpec.describe "inventories/new", type: :view do
  before(:each) do
    assign(:inventory, Inventory.new(
      :inventory_name => "MyString",
      :inventory_starting_amount => 1.5,
      :inventory_current_amount => 1.5,
      :inventory_unit => "MyString",
      :lead_time_days => 1.5
    ))
  end

  it "renders new inventory form" do
    render

    assert_select "form[action=?][method=?]", inventories_path, "post" do

      assert_select "input#inventory_inventory_name[name=?]", "inventory[inventory_name]"

      assert_select "input#inventory_inventory_starting_amount[name=?]", "inventory[inventory_starting_amount]"

      assert_select "input#inventory_inventory_current_amount[name=?]", "inventory[inventory_current_amount]"

      assert_select "input#inventory_inventory_unit[name=?]", "inventory[inventory_unit]"

      assert_select "input#inventory_lead_time_days[name=?]", "inventory[lead_time_days]"
    end
  end
end
