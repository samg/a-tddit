require "rails_helper"

RSpec.describe Bar30sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar30s").to route_to("bar30s#index")
    end

    it "routes to #new" do
      expect(get: "/bar30s/new").to route_to("bar30s#new")
    end

    it "routes to #show" do
      expect(get: "/bar30s/1").to route_to("bar30s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar30s/1/edit").to route_to("bar30s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar30s").to route_to("bar30s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar30s/1").to route_to("bar30s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar30s/1").to route_to("bar30s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar30s/1").to route_to("bar30s#destroy", id: "1")
    end
  end
end
