require "rails_helper"

RSpec.describe Baz2sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz2s").to route_to("baz2s#index")
    end

    it "routes to #new" do
      expect(get: "/baz2s/new").to route_to("baz2s#new")
    end

    it "routes to #show" do
      expect(get: "/baz2s/1").to route_to("baz2s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz2s/1/edit").to route_to("baz2s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz2s").to route_to("baz2s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz2s/1").to route_to("baz2s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz2s/1").to route_to("baz2s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz2s/1").to route_to("baz2s#destroy", id: "1")
    end
  end
end
