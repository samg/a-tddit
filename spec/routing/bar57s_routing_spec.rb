require "rails_helper"

RSpec.describe Bar57sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar57s").to route_to("bar57s#index")
    end

    it "routes to #new" do
      expect(get: "/bar57s/new").to route_to("bar57s#new")
    end

    it "routes to #show" do
      expect(get: "/bar57s/1").to route_to("bar57s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar57s/1/edit").to route_to("bar57s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar57s").to route_to("bar57s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar57s/1").to route_to("bar57s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar57s/1").to route_to("bar57s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar57s/1").to route_to("bar57s#destroy", id: "1")
    end
  end
end
