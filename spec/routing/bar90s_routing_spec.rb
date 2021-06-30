require "rails_helper"

RSpec.describe Bar90sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar90s").to route_to("bar90s#index")
    end

    it "routes to #new" do
      expect(get: "/bar90s/new").to route_to("bar90s#new")
    end

    it "routes to #show" do
      expect(get: "/bar90s/1").to route_to("bar90s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar90s/1/edit").to route_to("bar90s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar90s").to route_to("bar90s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar90s/1").to route_to("bar90s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar90s/1").to route_to("bar90s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar90s/1").to route_to("bar90s#destroy", id: "1")
    end
  end
end
