require 'rails_helper'

RSpec.describe "components/show", type: :view do
  before(:each) do
    @component = assign(:component, Component.create!(
      :component_name => "Component Name",
      :component_amount => 1.5,
      :component_unit => "Component Unit",
      :product => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Component Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Component Unit/)
    expect(rendered).to match(//)
  end
end
