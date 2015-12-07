require 'rails_helper'

RSpec.describe "inventories/show", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :inventory_name => "Inventory Name",
      :inventory_starting_amount => 1.5,
      :inventory_current_amount => 1.5,
      :inventory_unit => "Inventory Unit",
      :lead_time_days => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Inventory Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Inventory Unit/)
    expect(rendered).to match(/1.5/)
  end
end
