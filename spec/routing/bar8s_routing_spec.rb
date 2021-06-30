require "rails_helper"

RSpec.describe Bar8sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar8s").to route_to("bar8s#index")
    end

    it "routes to #new" do
      expect(get: "/bar8s/new").to route_to("bar8s#new")
    end

    it "routes to #show" do
      expect(get: "/bar8s/1").to route_to("bar8s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar8s/1/edit").to route_to("bar8s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar8s").to route_to("bar8s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar8s/1").to route_to("bar8s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar8s/1").to route_to("bar8s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar8s/1").to route_to("bar8s#destroy", id: "1")
    end
  end
end
