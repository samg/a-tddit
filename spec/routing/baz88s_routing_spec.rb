require "rails_helper"

RSpec.describe Baz88sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz88s").to route_to("baz88s#index")
    end

    it "routes to #new" do
      expect(get: "/baz88s/new").to route_to("baz88s#new")
    end

    it "routes to #show" do
      expect(get: "/baz88s/1").to route_to("baz88s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz88s/1/edit").to route_to("baz88s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz88s").to route_to("baz88s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz88s/1").to route_to("baz88s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz88s/1").to route_to("baz88s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz88s/1").to route_to("baz88s#destroy", id: "1")
    end
  end
end
