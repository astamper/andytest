require 'rails_helper'

RSpec.describe "manufactorings/show", type: :view do
  before(:each) do
    @manufactoring = assign(:manufactoring, Manufactoring.create!(
      :batch_amount => 1.5,
      :batch_unit => "Batch Unit",
      :batch_status => "Batch Status",
      :order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Batch Unit/)
    expect(rendered).to match(/Batch Status/)
    expect(rendered).to match(//)
  end
end
