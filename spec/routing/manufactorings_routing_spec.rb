require "rails_helper"

RSpec.describe ManufactoringsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/manufactorings").to route_to("manufactorings#index")
    end

    it "routes to #new" do
      expect(:get => "/manufactorings/new").to route_to("manufactorings#new")
    end

    it "routes to #show" do
      expect(:get => "/manufactorings/1").to route_to("manufactorings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/manufactorings/1/edit").to route_to("manufactorings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/manufactorings").to route_to("manufactorings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/manufactorings/1").to route_to("manufactorings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/manufactorings/1").to route_to("manufactorings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/manufactorings/1").to route_to("manufactorings#destroy", :id => "1")
    end

  end
end
