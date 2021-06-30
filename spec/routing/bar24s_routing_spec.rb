require "rails_helper"

RSpec.describe Bar24sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar24s").to route_to("bar24s#index")
    end

    it "routes to #new" do
      expect(get: "/bar24s/new").to route_to("bar24s#new")
    end

    it "routes to #show" do
      expect(get: "/bar24s/1").to route_to("bar24s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar24s/1/edit").to route_to("bar24s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar24s").to route_to("bar24s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar24s/1").to route_to("bar24s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar24s/1").to route_to("bar24s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar24s/1").to route_to("bar24s#destroy", id: "1")
    end
  end
end
