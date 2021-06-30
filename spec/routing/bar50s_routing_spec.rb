require "rails_helper"

RSpec.describe Bar50sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar50s").to route_to("bar50s#index")
    end

    it "routes to #new" do
      expect(get: "/bar50s/new").to route_to("bar50s#new")
    end

    it "routes to #show" do
      expect(get: "/bar50s/1").to route_to("bar50s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar50s/1/edit").to route_to("bar50s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar50s").to route_to("bar50s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar50s/1").to route_to("bar50s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar50s/1").to route_to("bar50s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar50s/1").to route_to("bar50s#destroy", id: "1")
    end
  end
end
