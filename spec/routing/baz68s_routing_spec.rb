require "rails_helper"

RSpec.describe Baz68sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz68s").to route_to("baz68s#index")
    end

    it "routes to #new" do
      expect(get: "/baz68s/new").to route_to("baz68s#new")
    end

    it "routes to #show" do
      expect(get: "/baz68s/1").to route_to("baz68s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz68s/1/edit").to route_to("baz68s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz68s").to route_to("baz68s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz68s/1").to route_to("baz68s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz68s/1").to route_to("baz68s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz68s/1").to route_to("baz68s#destroy", id: "1")
    end
  end
end
