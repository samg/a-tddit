require "rails_helper"

RSpec.describe Bar49sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar49s").to route_to("bar49s#index")
    end

    it "routes to #new" do
      expect(get: "/bar49s/new").to route_to("bar49s#new")
    end

    it "routes to #show" do
      expect(get: "/bar49s/1").to route_to("bar49s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar49s/1/edit").to route_to("bar49s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar49s").to route_to("bar49s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar49s/1").to route_to("bar49s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar49s/1").to route_to("bar49s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar49s/1").to route_to("bar49s#destroy", id: "1")
    end
  end
end
