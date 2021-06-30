require "rails_helper"

RSpec.describe Baz93sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz93s").to route_to("baz93s#index")
    end

    it "routes to #new" do
      expect(get: "/baz93s/new").to route_to("baz93s#new")
    end

    it "routes to #show" do
      expect(get: "/baz93s/1").to route_to("baz93s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz93s/1/edit").to route_to("baz93s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz93s").to route_to("baz93s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz93s/1").to route_to("baz93s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz93s/1").to route_to("baz93s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz93s/1").to route_to("baz93s#destroy", id: "1")
    end
  end
end
