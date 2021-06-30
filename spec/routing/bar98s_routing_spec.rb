require "rails_helper"

RSpec.describe Bar98sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar98s").to route_to("bar98s#index")
    end

    it "routes to #new" do
      expect(get: "/bar98s/new").to route_to("bar98s#new")
    end

    it "routes to #show" do
      expect(get: "/bar98s/1").to route_to("bar98s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar98s/1/edit").to route_to("bar98s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar98s").to route_to("bar98s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar98s/1").to route_to("bar98s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar98s/1").to route_to("bar98s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar98s/1").to route_to("bar98s#destroy", id: "1")
    end
  end
end
