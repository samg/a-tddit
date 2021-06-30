require "rails_helper"

RSpec.describe Baz39sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz39s").to route_to("baz39s#index")
    end

    it "routes to #new" do
      expect(get: "/baz39s/new").to route_to("baz39s#new")
    end

    it "routes to #show" do
      expect(get: "/baz39s/1").to route_to("baz39s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz39s/1/edit").to route_to("baz39s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz39s").to route_to("baz39s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz39s/1").to route_to("baz39s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz39s/1").to route_to("baz39s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz39s/1").to route_to("baz39s#destroy", id: "1")
    end
  end
end
