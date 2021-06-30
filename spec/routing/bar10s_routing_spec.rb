require "rails_helper"

RSpec.describe Bar10sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar10s").to route_to("bar10s#index")
    end

    it "routes to #new" do
      expect(get: "/bar10s/new").to route_to("bar10s#new")
    end

    it "routes to #show" do
      expect(get: "/bar10s/1").to route_to("bar10s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar10s/1/edit").to route_to("bar10s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar10s").to route_to("bar10s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar10s/1").to route_to("bar10s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar10s/1").to route_to("bar10s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar10s/1").to route_to("bar10s#destroy", id: "1")
    end
  end
end
