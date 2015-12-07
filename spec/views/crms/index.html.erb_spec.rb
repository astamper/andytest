require 'rails_helper'

RSpec.describe "crms/index", type: :view do
  before(:each) do
    assign(:crms, [
      Crm.create!(
        :crm_first_name => "Crm First Name",
        :crm_last_name => "Crm Last Name",
        :crm_phone_number => "Crm Phone Number",
        :crm_email => "Crm Email"
      ),
      Crm.create!(
        :crm_first_name => "Crm First Name",
        :crm_last_name => "Crm Last Name",
        :crm_phone_number => "Crm Phone Number",
        :crm_email => "Crm Email"
      )
    ])
  end

  it "renders a list of crms" do
    render
    assert_select "tr>td", :text => "Crm First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Crm Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Crm Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Crm Email".to_s, :count => 2
  end
end
