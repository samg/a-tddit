require "rails_helper"

RSpec.describe Bar95sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar95s").to route_to("bar95s#index")
    end

    it "routes to #new" do
      expect(get: "/bar95s/new").to route_to("bar95s#new")
    end

    it "routes to #show" do
      expect(get: "/bar95s/1").to route_to("bar95s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar95s/1/edit").to route_to("bar95s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar95s").to route_to("bar95s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar95s/1").to route_to("bar95s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar95s/1").to route_to("bar95s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar95s/1").to route_to("bar95s#destroy", id: "1")
    end
  end
end
