require "rails_helper"

RSpec.describe Baz9sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz9s").to route_to("baz9s#index")
    end

    it "routes to #new" do
      expect(get: "/baz9s/new").to route_to("baz9s#new")
    end

    it "routes to #show" do
      expect(get: "/baz9s/1").to route_to("baz9s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz9s/1/edit").to route_to("baz9s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz9s").to route_to("baz9s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz9s/1").to route_to("baz9s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz9s/1").to route_to("baz9s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz9s/1").to route_to("baz9s#destroy", id: "1")
    end
  end
end
