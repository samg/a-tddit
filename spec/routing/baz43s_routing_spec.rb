require "rails_helper"

RSpec.describe Baz43sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz43s").to route_to("baz43s#index")
    end

    it "routes to #new" do
      expect(get: "/baz43s/new").to route_to("baz43s#new")
    end

    it "routes to #show" do
      expect(get: "/baz43s/1").to route_to("baz43s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz43s/1/edit").to route_to("baz43s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz43s").to route_to("baz43s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz43s/1").to route_to("baz43s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz43s/1").to route_to("baz43s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz43s/1").to route_to("baz43s#destroy", id: "1")
    end
  end
end
