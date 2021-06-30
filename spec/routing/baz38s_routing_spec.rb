require "rails_helper"

RSpec.describe Baz38sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz38s").to route_to("baz38s#index")
    end

    it "routes to #new" do
      expect(get: "/baz38s/new").to route_to("baz38s#new")
    end

    it "routes to #show" do
      expect(get: "/baz38s/1").to route_to("baz38s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz38s/1/edit").to route_to("baz38s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz38s").to route_to("baz38s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz38s/1").to route_to("baz38s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz38s/1").to route_to("baz38s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz38s/1").to route_to("baz38s#destroy", id: "1")
    end
  end
end
