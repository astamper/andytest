require 'rails_helper'

RSpec.describe "Manufactorings", type: :request do
  describe "GET /manufactorings" do
    it "works! (now write some real specs)" do
      get manufactorings_path
      expect(response).to have_http_status(200)
    end
  end
end
