require "rails_helper"

RSpec.describe Bar67sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar67s").to route_to("bar67s#index")
    end

    it "routes to #new" do
      expect(get: "/bar67s/new").to route_to("bar67s#new")
    end

    it "routes to #show" do
      expect(get: "/bar67s/1").to route_to("bar67s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar67s/1/edit").to route_to("bar67s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar67s").to route_to("bar67s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar67s/1").to route_to("bar67s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar67s/1").to route_to("bar67s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar67s/1").to route_to("bar67s#destroy", id: "1")
    end
  end
end
