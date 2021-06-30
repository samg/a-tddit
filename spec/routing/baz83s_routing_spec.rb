require "rails_helper"

RSpec.describe Baz83sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz83s").to route_to("baz83s#index")
    end

    it "routes to #new" do
      expect(get: "/baz83s/new").to route_to("baz83s#new")
    end

    it "routes to #show" do
      expect(get: "/baz83s/1").to route_to("baz83s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz83s/1/edit").to route_to("baz83s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz83s").to route_to("baz83s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz83s/1").to route_to("baz83s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz83s/1").to route_to("baz83s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz83s/1").to route_to("baz83s#destroy", id: "1")
    end
  end
end
