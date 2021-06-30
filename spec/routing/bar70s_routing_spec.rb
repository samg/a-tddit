require "rails_helper"

RSpec.describe Bar70sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar70s").to route_to("bar70s#index")
    end

    it "routes to #new" do
      expect(get: "/bar70s/new").to route_to("bar70s#new")
    end

    it "routes to #show" do
      expect(get: "/bar70s/1").to route_to("bar70s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar70s/1/edit").to route_to("bar70s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar70s").to route_to("bar70s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar70s/1").to route_to("bar70s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar70s/1").to route_to("bar70s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar70s/1").to route_to("bar70s#destroy", id: "1")
    end
  end
end
