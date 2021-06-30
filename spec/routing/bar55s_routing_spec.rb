require "rails_helper"

RSpec.describe Bar55sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar55s").to route_to("bar55s#index")
    end

    it "routes to #new" do
      expect(get: "/bar55s/new").to route_to("bar55s#new")
    end

    it "routes to #show" do
      expect(get: "/bar55s/1").to route_to("bar55s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar55s/1/edit").to route_to("bar55s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar55s").to route_to("bar55s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar55s/1").to route_to("bar55s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar55s/1").to route_to("bar55s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar55s/1").to route_to("bar55s#destroy", id: "1")
    end
  end
end
