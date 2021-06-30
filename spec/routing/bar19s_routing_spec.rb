require "rails_helper"

RSpec.describe Bar19sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar19s").to route_to("bar19s#index")
    end

    it "routes to #new" do
      expect(get: "/bar19s/new").to route_to("bar19s#new")
    end

    it "routes to #show" do
      expect(get: "/bar19s/1").to route_to("bar19s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar19s/1/edit").to route_to("bar19s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar19s").to route_to("bar19s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar19s/1").to route_to("bar19s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar19s/1").to route_to("bar19s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar19s/1").to route_to("bar19s#destroy", id: "1")
    end
  end
end
