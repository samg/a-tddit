require "rails_helper"

RSpec.describe Bar31sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar31s").to route_to("bar31s#index")
    end

    it "routes to #new" do
      expect(get: "/bar31s/new").to route_to("bar31s#new")
    end

    it "routes to #show" do
      expect(get: "/bar31s/1").to route_to("bar31s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar31s/1/edit").to route_to("bar31s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar31s").to route_to("bar31s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar31s/1").to route_to("bar31s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar31s/1").to route_to("bar31s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar31s/1").to route_to("bar31s#destroy", id: "1")
    end
  end
end
