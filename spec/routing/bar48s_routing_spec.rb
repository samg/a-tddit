require "rails_helper"

RSpec.describe Bar48sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar48s").to route_to("bar48s#index")
    end

    it "routes to #new" do
      expect(get: "/bar48s/new").to route_to("bar48s#new")
    end

    it "routes to #show" do
      expect(get: "/bar48s/1").to route_to("bar48s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar48s/1/edit").to route_to("bar48s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar48s").to route_to("bar48s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar48s/1").to route_to("bar48s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar48s/1").to route_to("bar48s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar48s/1").to route_to("bar48s#destroy", id: "1")
    end
  end
end
