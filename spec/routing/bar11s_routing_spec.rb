require "rails_helper"

RSpec.describe Bar11sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar11s").to route_to("bar11s#index")
    end

    it "routes to #new" do
      expect(get: "/bar11s/new").to route_to("bar11s#new")
    end

    it "routes to #show" do
      expect(get: "/bar11s/1").to route_to("bar11s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar11s/1/edit").to route_to("bar11s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar11s").to route_to("bar11s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar11s/1").to route_to("bar11s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar11s/1").to route_to("bar11s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar11s/1").to route_to("bar11s#destroy", id: "1")
    end
  end
end
