require 'rails_helper'

RSpec.describe "manufactorings/index", type: :view do
  before(:each) do
    assign(:manufactorings, [
      Manufactoring.create!(
        :batch_amount => 1.5,
        :batch_unit => "Batch Unit",
        :batch_status => "Batch Status",
        :order => nil
      ),
      Manufactoring.create!(
        :batch_amount => 1.5,
        :batch_unit => "Batch Unit",
        :batch_status => "Batch Status",
        :order => nil
      )
    ])
  end

  it "renders a list of manufactorings" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Batch Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Batch Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
