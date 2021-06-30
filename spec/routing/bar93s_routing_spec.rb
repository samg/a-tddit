require "rails_helper"

RSpec.describe Bar93sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar93s").to route_to("bar93s#index")
    end

    it "routes to #new" do
      expect(get: "/bar93s/new").to route_to("bar93s#new")
    end

    it "routes to #show" do
      expect(get: "/bar93s/1").to route_to("bar93s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar93s/1/edit").to route_to("bar93s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar93s").to route_to("bar93s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar93s/1").to route_to("bar93s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar93s/1").to route_to("bar93s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar93s/1").to route_to("bar93s#destroy", id: "1")
    end
  end
end
