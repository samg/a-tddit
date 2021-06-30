require "rails_helper"

RSpec.describe Bar9sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar9s").to route_to("bar9s#index")
    end

    it "routes to #new" do
      expect(get: "/bar9s/new").to route_to("bar9s#new")
    end

    it "routes to #show" do
      expect(get: "/bar9s/1").to route_to("bar9s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar9s/1/edit").to route_to("bar9s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar9s").to route_to("bar9s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar9s/1").to route_to("bar9s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar9s/1").to route_to("bar9s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar9s/1").to route_to("bar9s#destroy", id: "1")
    end
  end
end
