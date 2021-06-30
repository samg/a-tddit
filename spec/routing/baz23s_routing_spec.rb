require "rails_helper"

RSpec.describe Baz23sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz23s").to route_to("baz23s#index")
    end

    it "routes to #new" do
      expect(get: "/baz23s/new").to route_to("baz23s#new")
    end

    it "routes to #show" do
      expect(get: "/baz23s/1").to route_to("baz23s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz23s/1/edit").to route_to("baz23s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz23s").to route_to("baz23s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz23s/1").to route_to("baz23s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz23s/1").to route_to("baz23s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz23s/1").to route_to("baz23s#destroy", id: "1")
    end
  end
end
