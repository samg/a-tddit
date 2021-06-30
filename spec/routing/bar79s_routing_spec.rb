require "rails_helper"

RSpec.describe Bar79sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar79s").to route_to("bar79s#index")
    end

    it "routes to #new" do
      expect(get: "/bar79s/new").to route_to("bar79s#new")
    end

    it "routes to #show" do
      expect(get: "/bar79s/1").to route_to("bar79s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar79s/1/edit").to route_to("bar79s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar79s").to route_to("bar79s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar79s/1").to route_to("bar79s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar79s/1").to route_to("bar79s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar79s/1").to route_to("bar79s#destroy", id: "1")
    end
  end
end
