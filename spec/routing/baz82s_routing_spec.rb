require "rails_helper"

RSpec.describe Baz82sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz82s").to route_to("baz82s#index")
    end

    it "routes to #new" do
      expect(get: "/baz82s/new").to route_to("baz82s#new")
    end

    it "routes to #show" do
      expect(get: "/baz82s/1").to route_to("baz82s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz82s/1/edit").to route_to("baz82s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz82s").to route_to("baz82s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz82s/1").to route_to("baz82s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz82s/1").to route_to("baz82s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz82s/1").to route_to("baz82s#destroy", id: "1")
    end
  end
end
