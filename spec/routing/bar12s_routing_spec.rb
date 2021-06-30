require "rails_helper"

RSpec.describe Bar12sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar12s").to route_to("bar12s#index")
    end

    it "routes to #new" do
      expect(get: "/bar12s/new").to route_to("bar12s#new")
    end

    it "routes to #show" do
      expect(get: "/bar12s/1").to route_to("bar12s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar12s/1/edit").to route_to("bar12s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar12s").to route_to("bar12s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar12s/1").to route_to("bar12s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar12s/1").to route_to("bar12s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar12s/1").to route_to("bar12s#destroy", id: "1")
    end
  end
end
