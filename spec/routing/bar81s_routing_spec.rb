require "rails_helper"

RSpec.describe Bar81sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar81s").to route_to("bar81s#index")
    end

    it "routes to #new" do
      expect(get: "/bar81s/new").to route_to("bar81s#new")
    end

    it "routes to #show" do
      expect(get: "/bar81s/1").to route_to("bar81s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar81s/1/edit").to route_to("bar81s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar81s").to route_to("bar81s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar81s/1").to route_to("bar81s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar81s/1").to route_to("bar81s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar81s/1").to route_to("bar81s#destroy", id: "1")
    end
  end
end
