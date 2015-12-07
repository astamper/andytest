require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :category => "Category",
      :product_name => "Product Name",
      :order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Product Name/)
    expect(rendered).to match(//)
  end
end
