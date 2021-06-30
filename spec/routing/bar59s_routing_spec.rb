require "rails_helper"

RSpec.describe Bar59sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar59s").to route_to("bar59s#index")
    end

    it "routes to #new" do
      expect(get: "/bar59s/new").to route_to("bar59s#new")
    end

    it "routes to #show" do
      expect(get: "/bar59s/1").to route_to("bar59s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar59s/1/edit").to route_to("bar59s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar59s").to route_to("bar59s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar59s/1").to route_to("bar59s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar59s/1").to route_to("bar59s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar59s/1").to route_to("bar59s#destroy", id: "1")
    end
  end
end
