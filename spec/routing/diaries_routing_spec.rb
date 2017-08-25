require "rails_helper"

RSpec.describe DiariesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/diaries").to route_to("diaries#index")
    end

    it "routes to #new" do
      expect(:get => "/diaries/new").to route_to("diaries#new")
    end

    it "routes to #show" do
      expect(:get => "/diaries/1").to route_to("diaries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/diaries/1/edit").to route_to("diaries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/diaries").to route_to("diaries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/diaries/1").to route_to("diaries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/diaries/1").to route_to("diaries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/diaries/1").to route_to("diaries#destroy", :id => "1")
    end

  end
end
