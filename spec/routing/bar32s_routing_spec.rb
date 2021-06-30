require "rails_helper"

RSpec.describe Bar32sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar32s").to route_to("bar32s#index")
    end

    it "routes to #new" do
      expect(get: "/bar32s/new").to route_to("bar32s#new")
    end

    it "routes to #show" do
      expect(get: "/bar32s/1").to route_to("bar32s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar32s/1/edit").to route_to("bar32s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar32s").to route_to("bar32s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar32s/1").to route_to("bar32s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar32s/1").to route_to("bar32s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar32s/1").to route_to("bar32s#destroy", id: "1")
    end
  end
end
