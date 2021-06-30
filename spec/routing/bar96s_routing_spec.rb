require "rails_helper"

RSpec.describe Bar96sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar96s").to route_to("bar96s#index")
    end

    it "routes to #new" do
      expect(get: "/bar96s/new").to route_to("bar96s#new")
    end

    it "routes to #show" do
      expect(get: "/bar96s/1").to route_to("bar96s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar96s/1/edit").to route_to("bar96s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar96s").to route_to("bar96s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar96s/1").to route_to("bar96s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar96s/1").to route_to("bar96s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar96s/1").to route_to("bar96s#destroy", id: "1")
    end
  end
end
