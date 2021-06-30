require "rails_helper"

RSpec.describe Baz47sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz47s").to route_to("baz47s#index")
    end

    it "routes to #new" do
      expect(get: "/baz47s/new").to route_to("baz47s#new")
    end

    it "routes to #show" do
      expect(get: "/baz47s/1").to route_to("baz47s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz47s/1/edit").to route_to("baz47s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz47s").to route_to("baz47s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz47s/1").to route_to("baz47s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz47s/1").to route_to("baz47s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz47s/1").to route_to("baz47s#destroy", id: "1")
    end
  end
end
