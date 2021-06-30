require "rails_helper"

RSpec.describe Baz42sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz42s").to route_to("baz42s#index")
    end

    it "routes to #new" do
      expect(get: "/baz42s/new").to route_to("baz42s#new")
    end

    it "routes to #show" do
      expect(get: "/baz42s/1").to route_to("baz42s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz42s/1/edit").to route_to("baz42s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz42s").to route_to("baz42s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz42s/1").to route_to("baz42s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz42s/1").to route_to("baz42s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz42s/1").to route_to("baz42s#destroy", id: "1")
    end
  end
end
