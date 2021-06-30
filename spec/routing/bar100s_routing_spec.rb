require "rails_helper"

RSpec.describe Bar100sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar100s").to route_to("bar100s#index")
    end

    it "routes to #new" do
      expect(get: "/bar100s/new").to route_to("bar100s#new")
    end

    it "routes to #show" do
      expect(get: "/bar100s/1").to route_to("bar100s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar100s/1/edit").to route_to("bar100s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar100s").to route_to("bar100s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar100s/1").to route_to("bar100s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar100s/1").to route_to("bar100s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar100s/1").to route_to("bar100s#destroy", id: "1")
    end
  end
end
