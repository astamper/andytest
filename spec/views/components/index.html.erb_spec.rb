require 'rails_helper'

RSpec.describe "components/index", type: :view do
  before(:each) do
    assign(:components, [
      Component.create!(
        :component_name => "Component Name",
        :component_amount => 1.5,
        :component_unit => "Component Unit",
        :product => nil
      ),
      Component.create!(
        :component_name => "Component Name",
        :component_amount => 1.5,
        :component_unit => "Component Unit",
        :product => nil
      )
    ])
  end

  it "renders a list of components" do
    render
    assert_select "tr>td", :text => "Component Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Component Unit".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
