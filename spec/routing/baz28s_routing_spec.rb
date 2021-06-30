require "rails_helper"

RSpec.describe Baz28sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz28s").to route_to("baz28s#index")
    end

    it "routes to #new" do
      expect(get: "/baz28s/new").to route_to("baz28s#new")
    end

    it "routes to #show" do
      expect(get: "/baz28s/1").to route_to("baz28s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz28s/1/edit").to route_to("baz28s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz28s").to route_to("baz28s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz28s/1").to route_to("baz28s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz28s/1").to route_to("baz28s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz28s/1").to route_to("baz28s#destroy", id: "1")
    end
  end
end
