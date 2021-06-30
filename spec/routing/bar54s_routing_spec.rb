require "rails_helper"

RSpec.describe Bar54sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar54s").to route_to("bar54s#index")
    end

    it "routes to #new" do
      expect(get: "/bar54s/new").to route_to("bar54s#new")
    end

    it "routes to #show" do
      expect(get: "/bar54s/1").to route_to("bar54s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar54s/1/edit").to route_to("bar54s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar54s").to route_to("bar54s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar54s/1").to route_to("bar54s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar54s/1").to route_to("bar54s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar54s/1").to route_to("bar54s#destroy", id: "1")
    end
  end
end
