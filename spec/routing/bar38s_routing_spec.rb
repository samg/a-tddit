require "rails_helper"

RSpec.describe Bar38sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar38s").to route_to("bar38s#index")
    end

    it "routes to #new" do
      expect(get: "/bar38s/new").to route_to("bar38s#new")
    end

    it "routes to #show" do
      expect(get: "/bar38s/1").to route_to("bar38s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar38s/1/edit").to route_to("bar38s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar38s").to route_to("bar38s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar38s/1").to route_to("bar38s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar38s/1").to route_to("bar38s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar38s/1").to route_to("bar38s#destroy", id: "1")
    end
  end
end
