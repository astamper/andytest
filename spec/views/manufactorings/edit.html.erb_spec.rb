require 'rails_helper'

RSpec.describe "manufactorings/edit", type: :view do
  before(:each) do
    @manufactoring = assign(:manufactoring, Manufactoring.create!(
      :batch_amount => 1.5,
      :batch_unit => "MyString",
      :batch_status => "MyString",
      :order => nil
    ))
  end

  it "renders the edit manufactoring form" do
    render

    assert_select "form[action=?][method=?]", manufactoring_path(@manufactoring), "post" do

      assert_select "input#manufactoring_batch_amount[name=?]", "manufactoring[batch_amount]"

      assert_select "input#manufactoring_batch_unit[name=?]", "manufactoring[batch_unit]"

      assert_select "input#manufactoring_batch_status[name=?]", "manufactoring[batch_status]"

      assert_select "input#manufactoring_order_id[name=?]", "manufactoring[order_id]"
    end
  end
end
