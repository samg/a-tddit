require "rails_helper"

RSpec.describe Baz24sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz24s").to route_to("baz24s#index")
    end

    it "routes to #new" do
      expect(get: "/baz24s/new").to route_to("baz24s#new")
    end

    it "routes to #show" do
      expect(get: "/baz24s/1").to route_to("baz24s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz24s/1/edit").to route_to("baz24s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz24s").to route_to("baz24s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz24s/1").to route_to("baz24s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz24s/1").to route_to("baz24s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz24s/1").to route_to("baz24s#destroy", id: "1")
    end
  end
end
