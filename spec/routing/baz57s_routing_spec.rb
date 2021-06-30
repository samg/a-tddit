require "rails_helper"

RSpec.describe Baz57sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz57s").to route_to("baz57s#index")
    end

    it "routes to #new" do
      expect(get: "/baz57s/new").to route_to("baz57s#new")
    end

    it "routes to #show" do
      expect(get: "/baz57s/1").to route_to("baz57s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz57s/1/edit").to route_to("baz57s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz57s").to route_to("baz57s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz57s/1").to route_to("baz57s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz57s/1").to route_to("baz57s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz57s/1").to route_to("baz57s#destroy", id: "1")
    end
  end
end
