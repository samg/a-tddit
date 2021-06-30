require "rails_helper"

RSpec.describe Bar66sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar66s").to route_to("bar66s#index")
    end

    it "routes to #new" do
      expect(get: "/bar66s/new").to route_to("bar66s#new")
    end

    it "routes to #show" do
      expect(get: "/bar66s/1").to route_to("bar66s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar66s/1/edit").to route_to("bar66s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar66s").to route_to("bar66s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar66s/1").to route_to("bar66s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar66s/1").to route_to("bar66s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar66s/1").to route_to("bar66s#destroy", id: "1")
    end
  end
end
