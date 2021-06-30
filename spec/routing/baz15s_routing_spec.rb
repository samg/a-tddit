require "rails_helper"

RSpec.describe Baz15sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz15s").to route_to("baz15s#index")
    end

    it "routes to #new" do
      expect(get: "/baz15s/new").to route_to("baz15s#new")
    end

    it "routes to #show" do
      expect(get: "/baz15s/1").to route_to("baz15s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz15s/1/edit").to route_to("baz15s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz15s").to route_to("baz15s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz15s/1").to route_to("baz15s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz15s/1").to route_to("baz15s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz15s/1").to route_to("baz15s#destroy", id: "1")
    end
  end
end
