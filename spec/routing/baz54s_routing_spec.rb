require "rails_helper"

RSpec.describe Baz54sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz54s").to route_to("baz54s#index")
    end

    it "routes to #new" do
      expect(get: "/baz54s/new").to route_to("baz54s#new")
    end

    it "routes to #show" do
      expect(get: "/baz54s/1").to route_to("baz54s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz54s/1/edit").to route_to("baz54s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz54s").to route_to("baz54s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz54s/1").to route_to("baz54s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz54s/1").to route_to("baz54s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz54s/1").to route_to("baz54s#destroy", id: "1")
    end
  end
end
