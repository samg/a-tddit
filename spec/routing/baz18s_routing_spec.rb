require "rails_helper"

RSpec.describe Baz18sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz18s").to route_to("baz18s#index")
    end

    it "routes to #new" do
      expect(get: "/baz18s/new").to route_to("baz18s#new")
    end

    it "routes to #show" do
      expect(get: "/baz18s/1").to route_to("baz18s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz18s/1/edit").to route_to("baz18s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz18s").to route_to("baz18s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz18s/1").to route_to("baz18s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz18s/1").to route_to("baz18s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz18s/1").to route_to("baz18s#destroy", id: "1")
    end
  end
end
