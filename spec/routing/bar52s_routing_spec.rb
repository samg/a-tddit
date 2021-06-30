require "rails_helper"

RSpec.describe Bar52sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar52s").to route_to("bar52s#index")
    end

    it "routes to #new" do
      expect(get: "/bar52s/new").to route_to("bar52s#new")
    end

    it "routes to #show" do
      expect(get: "/bar52s/1").to route_to("bar52s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar52s/1/edit").to route_to("bar52s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar52s").to route_to("bar52s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar52s/1").to route_to("bar52s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar52s/1").to route_to("bar52s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar52s/1").to route_to("bar52s#destroy", id: "1")
    end
  end
end
