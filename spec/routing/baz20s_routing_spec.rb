require "rails_helper"

RSpec.describe Baz20sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz20s").to route_to("baz20s#index")
    end

    it "routes to #new" do
      expect(get: "/baz20s/new").to route_to("baz20s#new")
    end

    it "routes to #show" do
      expect(get: "/baz20s/1").to route_to("baz20s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz20s/1/edit").to route_to("baz20s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz20s").to route_to("baz20s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz20s/1").to route_to("baz20s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz20s/1").to route_to("baz20s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz20s/1").to route_to("baz20s#destroy", id: "1")
    end
  end
end
