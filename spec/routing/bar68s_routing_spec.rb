require "rails_helper"

RSpec.describe Bar68sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar68s").to route_to("bar68s#index")
    end

    it "routes to #new" do
      expect(get: "/bar68s/new").to route_to("bar68s#new")
    end

    it "routes to #show" do
      expect(get: "/bar68s/1").to route_to("bar68s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar68s/1/edit").to route_to("bar68s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar68s").to route_to("bar68s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar68s/1").to route_to("bar68s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar68s/1").to route_to("bar68s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar68s/1").to route_to("bar68s#destroy", id: "1")
    end
  end
end
