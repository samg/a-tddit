require "rails_helper"

RSpec.describe Baz7sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz7s").to route_to("baz7s#index")
    end

    it "routes to #new" do
      expect(get: "/baz7s/new").to route_to("baz7s#new")
    end

    it "routes to #show" do
      expect(get: "/baz7s/1").to route_to("baz7s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz7s/1/edit").to route_to("baz7s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz7s").to route_to("baz7s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz7s/1").to route_to("baz7s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz7s/1").to route_to("baz7s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz7s/1").to route_to("baz7s#destroy", id: "1")
    end
  end
end
