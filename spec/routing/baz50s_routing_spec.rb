require "rails_helper"

RSpec.describe Baz50sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz50s").to route_to("baz50s#index")
    end

    it "routes to #new" do
      expect(get: "/baz50s/new").to route_to("baz50s#new")
    end

    it "routes to #show" do
      expect(get: "/baz50s/1").to route_to("baz50s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz50s/1/edit").to route_to("baz50s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz50s").to route_to("baz50s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz50s/1").to route_to("baz50s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz50s/1").to route_to("baz50s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz50s/1").to route_to("baz50s#destroy", id: "1")
    end
  end
end
