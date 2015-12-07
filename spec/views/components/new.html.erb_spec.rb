require 'rails_helper'

RSpec.describe "components/new", type: :view do
  before(:each) do
    assign(:component, Component.new(
      :component_name => "MyString",
      :component_amount => 1.5,
      :component_unit => "MyString",
      :product => nil
    ))
  end

  it "renders new component form" do
    render

    assert_select "form[action=?][method=?]", components_path, "post" do

      assert_select "input#component_component_name[name=?]", "component[component_name]"

      assert_select "input#component_component_amount[name=?]", "component[component_amount]"

      assert_select "input#component_component_unit[name=?]", "component[component_unit]"

      assert_select "input#component_product_id[name=?]", "component[product_id]"
    end
  end
end
