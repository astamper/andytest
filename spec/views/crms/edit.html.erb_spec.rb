require 'rails_helper'

RSpec.describe "crms/edit", type: :view do
  before(:each) do
    @crm = assign(:crm, Crm.create!(
      :crm_first_name => "MyString",
      :crm_last_name => "MyString",
      :crm_phone_number => "MyString",
      :crm_email => "MyString"
    ))
  end

  it "renders the edit crm form" do
    render

    assert_select "form[action=?][method=?]", crm_path(@crm), "post" do

      assert_select "input#crm_crm_first_name[name=?]", "crm[crm_first_name]"

      assert_select "input#crm_crm_last_name[name=?]", "crm[crm_last_name]"

      assert_select "input#crm_crm_phone_number[name=?]", "crm[crm_phone_number]"

      assert_select "input#crm_crm_email[name=?]", "crm[crm_email]"
    end
  end
end
