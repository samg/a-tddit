require "rails_helper"

RSpec.describe Bar14sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar14s").to route_to("bar14s#index")
    end

    it "routes to #new" do
      expect(get: "/bar14s/new").to route_to("bar14s#new")
    end

    it "routes to #show" do
      expect(get: "/bar14s/1").to route_to("bar14s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar14s/1/edit").to route_to("bar14s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar14s").to route_to("bar14s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar14s/1").to route_to("bar14s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar14s/1").to route_to("bar14s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar14s/1").to route_to("bar14s#destroy", id: "1")
    end
  end
end
