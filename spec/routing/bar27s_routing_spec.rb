require "rails_helper"

RSpec.describe Bar27sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar27s").to route_to("bar27s#index")
    end

    it "routes to #new" do
      expect(get: "/bar27s/new").to route_to("bar27s#new")
    end

    it "routes to #show" do
      expect(get: "/bar27s/1").to route_to("bar27s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar27s/1/edit").to route_to("bar27s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar27s").to route_to("bar27s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar27s/1").to route_to("bar27s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar27s/1").to route_to("bar27s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar27s/1").to route_to("bar27s#destroy", id: "1")
    end
  end
end
