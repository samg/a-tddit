require "rails_helper"

RSpec.describe Bar36sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar36s").to route_to("bar36s#index")
    end

    it "routes to #new" do
      expect(get: "/bar36s/new").to route_to("bar36s#new")
    end

    it "routes to #show" do
      expect(get: "/bar36s/1").to route_to("bar36s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar36s/1/edit").to route_to("bar36s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar36s").to route_to("bar36s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar36s/1").to route_to("bar36s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar36s/1").to route_to("bar36s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar36s/1").to route_to("bar36s#destroy", id: "1")
    end
  end
end
