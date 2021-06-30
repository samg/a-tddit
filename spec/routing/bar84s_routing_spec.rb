require "rails_helper"

RSpec.describe Bar84sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar84s").to route_to("bar84s#index")
    end

    it "routes to #new" do
      expect(get: "/bar84s/new").to route_to("bar84s#new")
    end

    it "routes to #show" do
      expect(get: "/bar84s/1").to route_to("bar84s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar84s/1/edit").to route_to("bar84s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar84s").to route_to("bar84s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar84s/1").to route_to("bar84s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar84s/1").to route_to("bar84s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar84s/1").to route_to("bar84s#destroy", id: "1")
    end
  end
end
