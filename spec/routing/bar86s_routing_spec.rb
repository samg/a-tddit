require "rails_helper"

RSpec.describe Bar86sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar86s").to route_to("bar86s#index")
    end

    it "routes to #new" do
      expect(get: "/bar86s/new").to route_to("bar86s#new")
    end

    it "routes to #show" do
      expect(get: "/bar86s/1").to route_to("bar86s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar86s/1/edit").to route_to("bar86s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar86s").to route_to("bar86s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar86s/1").to route_to("bar86s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar86s/1").to route_to("bar86s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar86s/1").to route_to("bar86s#destroy", id: "1")
    end
  end
end
