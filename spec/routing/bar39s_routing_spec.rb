require "rails_helper"

RSpec.describe Bar39sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar39s").to route_to("bar39s#index")
    end

    it "routes to #new" do
      expect(get: "/bar39s/new").to route_to("bar39s#new")
    end

    it "routes to #show" do
      expect(get: "/bar39s/1").to route_to("bar39s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar39s/1/edit").to route_to("bar39s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar39s").to route_to("bar39s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar39s/1").to route_to("bar39s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar39s/1").to route_to("bar39s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar39s/1").to route_to("bar39s#destroy", id: "1")
    end
  end
end
