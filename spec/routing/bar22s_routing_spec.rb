require "rails_helper"

RSpec.describe Bar22sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar22s").to route_to("bar22s#index")
    end

    it "routes to #new" do
      expect(get: "/bar22s/new").to route_to("bar22s#new")
    end

    it "routes to #show" do
      expect(get: "/bar22s/1").to route_to("bar22s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar22s/1/edit").to route_to("bar22s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar22s").to route_to("bar22s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar22s/1").to route_to("bar22s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar22s/1").to route_to("bar22s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar22s/1").to route_to("bar22s#destroy", id: "1")
    end
  end
end
