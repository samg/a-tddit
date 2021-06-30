require "rails_helper"

RSpec.describe Baz76sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz76s").to route_to("baz76s#index")
    end

    it "routes to #new" do
      expect(get: "/baz76s/new").to route_to("baz76s#new")
    end

    it "routes to #show" do
      expect(get: "/baz76s/1").to route_to("baz76s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz76s/1/edit").to route_to("baz76s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz76s").to route_to("baz76s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz76s/1").to route_to("baz76s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz76s/1").to route_to("baz76s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz76s/1").to route_to("baz76s#destroy", id: "1")
    end
  end
end
