require "rails_helper"

RSpec.describe Baz8sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz8s").to route_to("baz8s#index")
    end

    it "routes to #new" do
      expect(get: "/baz8s/new").to route_to("baz8s#new")
    end

    it "routes to #show" do
      expect(get: "/baz8s/1").to route_to("baz8s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz8s/1/edit").to route_to("baz8s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz8s").to route_to("baz8s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz8s/1").to route_to("baz8s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz8s/1").to route_to("baz8s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz8s/1").to route_to("baz8s#destroy", id: "1")
    end
  end
end
