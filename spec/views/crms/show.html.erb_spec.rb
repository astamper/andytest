require 'rails_helper'

RSpec.describe "crms/show", type: :view do
  before(:each) do
    @crm = assign(:crm, Crm.create!(
      :crm_first_name => "Crm First Name",
      :crm_last_name => "Crm Last Name",
      :crm_phone_number => "Crm Phone Number",
      :crm_email => "Crm Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Crm First Name/)
    expect(rendered).to match(/Crm Last Name/)
    expect(rendered).to match(/Crm Phone Number/)
    expect(rendered).to match(/Crm Email/)
  end
end
