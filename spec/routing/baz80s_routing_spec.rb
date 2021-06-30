require "rails_helper"

RSpec.describe Baz80sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz80s").to route_to("baz80s#index")
    end

    it "routes to #new" do
      expect(get: "/baz80s/new").to route_to("baz80s#new")
    end

    it "routes to #show" do
      expect(get: "/baz80s/1").to route_to("baz80s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz80s/1/edit").to route_to("baz80s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz80s").to route_to("baz80s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz80s/1").to route_to("baz80s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz80s/1").to route_to("baz80s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz80s/1").to route_to("baz80s#destroy", id: "1")
    end
  end
end
