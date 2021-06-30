require "rails_helper"

RSpec.describe Bar20sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar20s").to route_to("bar20s#index")
    end

    it "routes to #new" do
      expect(get: "/bar20s/new").to route_to("bar20s#new")
    end

    it "routes to #show" do
      expect(get: "/bar20s/1").to route_to("bar20s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar20s/1/edit").to route_to("bar20s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar20s").to route_to("bar20s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar20s/1").to route_to("bar20s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar20s/1").to route_to("bar20s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar20s/1").to route_to("bar20s#destroy", id: "1")
    end
  end
end
