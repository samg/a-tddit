require "rails_helper"

RSpec.describe Baz45sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz45s").to route_to("baz45s#index")
    end

    it "routes to #new" do
      expect(get: "/baz45s/new").to route_to("baz45s#new")
    end

    it "routes to #show" do
      expect(get: "/baz45s/1").to route_to("baz45s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz45s/1/edit").to route_to("baz45s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz45s").to route_to("baz45s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz45s/1").to route_to("baz45s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz45s/1").to route_to("baz45s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz45s/1").to route_to("baz45s#destroy", id: "1")
    end
  end
end
