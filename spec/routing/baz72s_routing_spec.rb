require "rails_helper"

RSpec.describe Baz72sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz72s").to route_to("baz72s#index")
    end

    it "routes to #new" do
      expect(get: "/baz72s/new").to route_to("baz72s#new")
    end

    it "routes to #show" do
      expect(get: "/baz72s/1").to route_to("baz72s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz72s/1/edit").to route_to("baz72s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz72s").to route_to("baz72s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz72s/1").to route_to("baz72s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz72s/1").to route_to("baz72s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz72s/1").to route_to("baz72s#destroy", id: "1")
    end
  end
end
