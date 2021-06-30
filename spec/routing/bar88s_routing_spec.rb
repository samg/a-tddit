require "rails_helper"

RSpec.describe Bar88sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar88s").to route_to("bar88s#index")
    end

    it "routes to #new" do
      expect(get: "/bar88s/new").to route_to("bar88s#new")
    end

    it "routes to #show" do
      expect(get: "/bar88s/1").to route_to("bar88s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar88s/1/edit").to route_to("bar88s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar88s").to route_to("bar88s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar88s/1").to route_to("bar88s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar88s/1").to route_to("bar88s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar88s/1").to route_to("bar88s#destroy", id: "1")
    end
  end
end
