require "rails_helper"

RSpec.describe Bar94sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar94s").to route_to("bar94s#index")
    end

    it "routes to #new" do
      expect(get: "/bar94s/new").to route_to("bar94s#new")
    end

    it "routes to #show" do
      expect(get: "/bar94s/1").to route_to("bar94s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar94s/1/edit").to route_to("bar94s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar94s").to route_to("bar94s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar94s/1").to route_to("bar94s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar94s/1").to route_to("bar94s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar94s/1").to route_to("bar94s#destroy", id: "1")
    end
  end
end
