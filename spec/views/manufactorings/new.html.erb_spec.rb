require 'rails_helper'

RSpec.describe "manufactorings/new", type: :view do
  before(:each) do
    assign(:manufactoring, Manufactoring.new(
      :batch_amount => 1.5,
      :batch_unit => "MyString",
      :batch_status => "MyString",
      :order => nil
    ))
  end

  it "renders new manufactoring form" do
    render

    assert_select "form[action=?][method=?]", manufactorings_path, "post" do

      assert_select "input#manufactoring_batch_amount[name=?]", "manufactoring[batch_amount]"

      assert_select "input#manufactoring_batch_unit[name=?]", "manufactoring[batch_unit]"

      assert_select "input#manufactoring_batch_status[name=?]", "manufactoring[batch_status]"

      assert_select "input#manufactoring_order_id[name=?]", "manufactoring[order_id]"
    end
  end
end
