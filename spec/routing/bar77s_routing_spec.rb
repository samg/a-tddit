require "rails_helper"

RSpec.describe Bar77sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar77s").to route_to("bar77s#index")
    end

    it "routes to #new" do
      expect(get: "/bar77s/new").to route_to("bar77s#new")
    end

    it "routes to #show" do
      expect(get: "/bar77s/1").to route_to("bar77s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar77s/1/edit").to route_to("bar77s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar77s").to route_to("bar77s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar77s/1").to route_to("bar77s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar77s/1").to route_to("bar77s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar77s/1").to route_to("bar77s#destroy", id: "1")
    end
  end
end
