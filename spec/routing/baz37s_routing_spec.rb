require "rails_helper"

RSpec.describe Baz37sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz37s").to route_to("baz37s#index")
    end

    it "routes to #new" do
      expect(get: "/baz37s/new").to route_to("baz37s#new")
    end

    it "routes to #show" do
      expect(get: "/baz37s/1").to route_to("baz37s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz37s/1/edit").to route_to("baz37s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz37s").to route_to("baz37s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz37s/1").to route_to("baz37s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz37s/1").to route_to("baz37s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz37s/1").to route_to("baz37s#destroy", id: "1")
    end
  end
end
