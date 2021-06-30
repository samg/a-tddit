require "rails_helper"

RSpec.describe Baz40sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz40s").to route_to("baz40s#index")
    end

    it "routes to #new" do
      expect(get: "/baz40s/new").to route_to("baz40s#new")
    end

    it "routes to #show" do
      expect(get: "/baz40s/1").to route_to("baz40s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz40s/1/edit").to route_to("baz40s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz40s").to route_to("baz40s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz40s/1").to route_to("baz40s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz40s/1").to route_to("baz40s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz40s/1").to route_to("baz40s#destroy", id: "1")
    end
  end
end
