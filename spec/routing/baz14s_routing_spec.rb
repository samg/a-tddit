require "rails_helper"

RSpec.describe Baz14sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz14s").to route_to("baz14s#index")
    end

    it "routes to #new" do
      expect(get: "/baz14s/new").to route_to("baz14s#new")
    end

    it "routes to #show" do
      expect(get: "/baz14s/1").to route_to("baz14s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz14s/1/edit").to route_to("baz14s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz14s").to route_to("baz14s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz14s/1").to route_to("baz14s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz14s/1").to route_to("baz14s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz14s/1").to route_to("baz14s#destroy", id: "1")
    end
  end
end
