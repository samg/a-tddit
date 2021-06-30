require "rails_helper"

RSpec.describe Bar18sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar18s").to route_to("bar18s#index")
    end

    it "routes to #new" do
      expect(get: "/bar18s/new").to route_to("bar18s#new")
    end

    it "routes to #show" do
      expect(get: "/bar18s/1").to route_to("bar18s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar18s/1/edit").to route_to("bar18s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar18s").to route_to("bar18s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar18s/1").to route_to("bar18s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar18s/1").to route_to("bar18s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar18s/1").to route_to("bar18s#destroy", id: "1")
    end
  end
end
