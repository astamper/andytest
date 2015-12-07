require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :category => "MyString",
      :product_name => "MyString",
      :order => nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_category[name=?]", "product[category]"

      assert_select "input#product_product_name[name=?]", "product[product_name]"

      assert_select "input#product_order_id[name=?]", "product[order_id]"
    end
  end
end
