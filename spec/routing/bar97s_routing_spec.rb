require "rails_helper"

RSpec.describe Bar97sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar97s").to route_to("bar97s#index")
    end

    it "routes to #new" do
      expect(get: "/bar97s/new").to route_to("bar97s#new")
    end

    it "routes to #show" do
      expect(get: "/bar97s/1").to route_to("bar97s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar97s/1/edit").to route_to("bar97s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar97s").to route_to("bar97s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar97s/1").to route_to("bar97s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar97s/1").to route_to("bar97s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar97s/1").to route_to("bar97s#destroy", id: "1")
    end
  end
end
