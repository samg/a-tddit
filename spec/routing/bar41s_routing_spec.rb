require "rails_helper"

RSpec.describe Bar41sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar41s").to route_to("bar41s#index")
    end

    it "routes to #new" do
      expect(get: "/bar41s/new").to route_to("bar41s#new")
    end

    it "routes to #show" do
      expect(get: "/bar41s/1").to route_to("bar41s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar41s/1/edit").to route_to("bar41s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar41s").to route_to("bar41s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar41s/1").to route_to("bar41s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar41s/1").to route_to("bar41s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar41s/1").to route_to("bar41s#destroy", id: "1")
    end
  end
end
