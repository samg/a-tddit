require "rails_helper"

RSpec.describe Bar82sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar82s").to route_to("bar82s#index")
    end

    it "routes to #new" do
      expect(get: "/bar82s/new").to route_to("bar82s#new")
    end

    it "routes to #show" do
      expect(get: "/bar82s/1").to route_to("bar82s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar82s/1/edit").to route_to("bar82s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar82s").to route_to("bar82s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar82s/1").to route_to("bar82s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar82s/1").to route_to("bar82s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar82s/1").to route_to("bar82s#destroy", id: "1")
    end
  end
end
