require "rails_helper"

RSpec.describe Baz87sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz87s").to route_to("baz87s#index")
    end

    it "routes to #new" do
      expect(get: "/baz87s/new").to route_to("baz87s#new")
    end

    it "routes to #show" do
      expect(get: "/baz87s/1").to route_to("baz87s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz87s/1/edit").to route_to("baz87s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz87s").to route_to("baz87s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz87s/1").to route_to("baz87s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz87s/1").to route_to("baz87s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz87s/1").to route_to("baz87s#destroy", id: "1")
    end
  end
end
