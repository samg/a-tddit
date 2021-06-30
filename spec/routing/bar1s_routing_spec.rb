require "rails_helper"

RSpec.describe Bar1sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar1s").to route_to("bar1s#index")
    end

    it "routes to #new" do
      expect(get: "/bar1s/new").to route_to("bar1s#new")
    end

    it "routes to #show" do
      expect(get: "/bar1s/1").to route_to("bar1s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar1s/1/edit").to route_to("bar1s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar1s").to route_to("bar1s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar1s/1").to route_to("bar1s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar1s/1").to route_to("bar1s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar1s/1").to route_to("bar1s#destroy", id: "1")
    end
  end
end
