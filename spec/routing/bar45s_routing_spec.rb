require "rails_helper"

RSpec.describe Bar45sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar45s").to route_to("bar45s#index")
    end

    it "routes to #new" do
      expect(get: "/bar45s/new").to route_to("bar45s#new")
    end

    it "routes to #show" do
      expect(get: "/bar45s/1").to route_to("bar45s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar45s/1/edit").to route_to("bar45s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar45s").to route_to("bar45s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar45s/1").to route_to("bar45s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar45s/1").to route_to("bar45s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar45s/1").to route_to("bar45s#destroy", id: "1")
    end
  end
end
