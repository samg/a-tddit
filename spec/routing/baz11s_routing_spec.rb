require "rails_helper"

RSpec.describe Baz11sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz11s").to route_to("baz11s#index")
    end

    it "routes to #new" do
      expect(get: "/baz11s/new").to route_to("baz11s#new")
    end

    it "routes to #show" do
      expect(get: "/baz11s/1").to route_to("baz11s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz11s/1/edit").to route_to("baz11s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz11s").to route_to("baz11s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz11s/1").to route_to("baz11s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz11s/1").to route_to("baz11s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz11s/1").to route_to("baz11s#destroy", id: "1")
    end
  end
end
