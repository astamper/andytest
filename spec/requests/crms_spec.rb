require 'rails_helper'

RSpec.describe "Crms", type: :request do
  describe "GET /crms" do
    it "works! (now write some real specs)" do
      get crms_path
      expect(response).to have_http_status(200)
    end
  end
end
