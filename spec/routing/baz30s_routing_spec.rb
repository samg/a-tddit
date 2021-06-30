require "rails_helper"

RSpec.describe Baz30sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz30s").to route_to("baz30s#index")
    end

    it "routes to #new" do
      expect(get: "/baz30s/new").to route_to("baz30s#new")
    end

    it "routes to #show" do
      expect(get: "/baz30s/1").to route_to("baz30s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz30s/1/edit").to route_to("baz30s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz30s").to route_to("baz30s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz30s/1").to route_to("baz30s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz30s/1").to route_to("baz30s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz30s/1").to route_to("baz30s#destroy", id: "1")
    end
  end
end
