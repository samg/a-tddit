require "rails_helper"

RSpec.describe Baz67sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz67s").to route_to("baz67s#index")
    end

    it "routes to #new" do
      expect(get: "/baz67s/new").to route_to("baz67s#new")
    end

    it "routes to #show" do
      expect(get: "/baz67s/1").to route_to("baz67s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz67s/1/edit").to route_to("baz67s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz67s").to route_to("baz67s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz67s/1").to route_to("baz67s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz67s/1").to route_to("baz67s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz67s/1").to route_to("baz67s#destroy", id: "1")
    end
  end
end
