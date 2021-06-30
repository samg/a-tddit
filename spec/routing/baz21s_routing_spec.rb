require "rails_helper"

RSpec.describe Baz21sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz21s").to route_to("baz21s#index")
    end

    it "routes to #new" do
      expect(get: "/baz21s/new").to route_to("baz21s#new")
    end

    it "routes to #show" do
      expect(get: "/baz21s/1").to route_to("baz21s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz21s/1/edit").to route_to("baz21s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz21s").to route_to("baz21s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz21s/1").to route_to("baz21s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz21s/1").to route_to("baz21s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz21s/1").to route_to("baz21s#destroy", id: "1")
    end
  end
end
