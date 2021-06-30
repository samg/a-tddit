require "rails_helper"

RSpec.describe Baz63sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz63s").to route_to("baz63s#index")
    end

    it "routes to #new" do
      expect(get: "/baz63s/new").to route_to("baz63s#new")
    end

    it "routes to #show" do
      expect(get: "/baz63s/1").to route_to("baz63s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz63s/1/edit").to route_to("baz63s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz63s").to route_to("baz63s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz63s/1").to route_to("baz63s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz63s/1").to route_to("baz63s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz63s/1").to route_to("baz63s#destroy", id: "1")
    end
  end
end
