require "rails_helper"

RSpec.describe Baz60sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz60s").to route_to("baz60s#index")
    end

    it "routes to #new" do
      expect(get: "/baz60s/new").to route_to("baz60s#new")
    end

    it "routes to #show" do
      expect(get: "/baz60s/1").to route_to("baz60s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz60s/1/edit").to route_to("baz60s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz60s").to route_to("baz60s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz60s/1").to route_to("baz60s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz60s/1").to route_to("baz60s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz60s/1").to route_to("baz60s#destroy", id: "1")
    end
  end
end
