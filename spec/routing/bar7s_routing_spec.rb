require "rails_helper"

RSpec.describe Bar7sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar7s").to route_to("bar7s#index")
    end

    it "routes to #new" do
      expect(get: "/bar7s/new").to route_to("bar7s#new")
    end

    it "routes to #show" do
      expect(get: "/bar7s/1").to route_to("bar7s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar7s/1/edit").to route_to("bar7s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar7s").to route_to("bar7s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar7s/1").to route_to("bar7s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar7s/1").to route_to("bar7s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar7s/1").to route_to("bar7s#destroy", id: "1")
    end
  end
end
