require "rails_helper"

RSpec.describe Bar2sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar2s").to route_to("bar2s#index")
    end

    it "routes to #new" do
      expect(get: "/bar2s/new").to route_to("bar2s#new")
    end

    it "routes to #show" do
      expect(get: "/bar2s/1").to route_to("bar2s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar2s/1/edit").to route_to("bar2s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar2s").to route_to("bar2s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar2s/1").to route_to("bar2s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar2s/1").to route_to("bar2s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar2s/1").to route_to("bar2s#destroy", id: "1")
    end
  end
end
