require "rails_helper"

RSpec.describe Baz98sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz98s").to route_to("baz98s#index")
    end

    it "routes to #new" do
      expect(get: "/baz98s/new").to route_to("baz98s#new")
    end

    it "routes to #show" do
      expect(get: "/baz98s/1").to route_to("baz98s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz98s/1/edit").to route_to("baz98s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz98s").to route_to("baz98s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz98s/1").to route_to("baz98s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz98s/1").to route_to("baz98s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz98s/1").to route_to("baz98s#destroy", id: "1")
    end
  end
end
