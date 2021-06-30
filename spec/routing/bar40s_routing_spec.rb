require "rails_helper"

RSpec.describe Bar40sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar40s").to route_to("bar40s#index")
    end

    it "routes to #new" do
      expect(get: "/bar40s/new").to route_to("bar40s#new")
    end

    it "routes to #show" do
      expect(get: "/bar40s/1").to route_to("bar40s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar40s/1/edit").to route_to("bar40s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar40s").to route_to("bar40s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar40s/1").to route_to("bar40s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar40s/1").to route_to("bar40s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar40s/1").to route_to("bar40s#destroy", id: "1")
    end
  end
end
