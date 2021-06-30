require "rails_helper"

RSpec.describe Bar3sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar3s").to route_to("bar3s#index")
    end

    it "routes to #new" do
      expect(get: "/bar3s/new").to route_to("bar3s#new")
    end

    it "routes to #show" do
      expect(get: "/bar3s/1").to route_to("bar3s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar3s/1/edit").to route_to("bar3s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar3s").to route_to("bar3s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar3s/1").to route_to("bar3s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar3s/1").to route_to("bar3s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar3s/1").to route_to("bar3s#destroy", id: "1")
    end
  end
end
