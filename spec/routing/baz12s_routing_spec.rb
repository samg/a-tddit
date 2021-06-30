require "rails_helper"

RSpec.describe Baz12sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz12s").to route_to("baz12s#index")
    end

    it "routes to #new" do
      expect(get: "/baz12s/new").to route_to("baz12s#new")
    end

    it "routes to #show" do
      expect(get: "/baz12s/1").to route_to("baz12s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz12s/1/edit").to route_to("baz12s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz12s").to route_to("baz12s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz12s/1").to route_to("baz12s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz12s/1").to route_to("baz12s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz12s/1").to route_to("baz12s#destroy", id: "1")
    end
  end
end
