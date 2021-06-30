require "rails_helper"

RSpec.describe Baz96sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz96s").to route_to("baz96s#index")
    end

    it "routes to #new" do
      expect(get: "/baz96s/new").to route_to("baz96s#new")
    end

    it "routes to #show" do
      expect(get: "/baz96s/1").to route_to("baz96s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz96s/1/edit").to route_to("baz96s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz96s").to route_to("baz96s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz96s/1").to route_to("baz96s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz96s/1").to route_to("baz96s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz96s/1").to route_to("baz96s#destroy", id: "1")
    end
  end
end
