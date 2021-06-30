require "rails_helper"

RSpec.describe Baz6sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz6s").to route_to("baz6s#index")
    end

    it "routes to #new" do
      expect(get: "/baz6s/new").to route_to("baz6s#new")
    end

    it "routes to #show" do
      expect(get: "/baz6s/1").to route_to("baz6s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz6s/1/edit").to route_to("baz6s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz6s").to route_to("baz6s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz6s/1").to route_to("baz6s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz6s/1").to route_to("baz6s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz6s/1").to route_to("baz6s#destroy", id: "1")
    end
  end
end
