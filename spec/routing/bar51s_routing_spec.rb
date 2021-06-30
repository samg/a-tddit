require "rails_helper"

RSpec.describe Bar51sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar51s").to route_to("bar51s#index")
    end

    it "routes to #new" do
      expect(get: "/bar51s/new").to route_to("bar51s#new")
    end

    it "routes to #show" do
      expect(get: "/bar51s/1").to route_to("bar51s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar51s/1/edit").to route_to("bar51s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar51s").to route_to("bar51s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar51s/1").to route_to("bar51s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar51s/1").to route_to("bar51s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar51s/1").to route_to("bar51s#destroy", id: "1")
    end
  end
end
