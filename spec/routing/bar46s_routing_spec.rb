require "rails_helper"

RSpec.describe Bar46sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar46s").to route_to("bar46s#index")
    end

    it "routes to #new" do
      expect(get: "/bar46s/new").to route_to("bar46s#new")
    end

    it "routes to #show" do
      expect(get: "/bar46s/1").to route_to("bar46s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar46s/1/edit").to route_to("bar46s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar46s").to route_to("bar46s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar46s/1").to route_to("bar46s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar46s/1").to route_to("bar46s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar46s/1").to route_to("bar46s#destroy", id: "1")
    end
  end
end
