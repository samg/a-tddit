require "rails_helper"

RSpec.describe Bar13sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar13s").to route_to("bar13s#index")
    end

    it "routes to #new" do
      expect(get: "/bar13s/new").to route_to("bar13s#new")
    end

    it "routes to #show" do
      expect(get: "/bar13s/1").to route_to("bar13s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar13s/1/edit").to route_to("bar13s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar13s").to route_to("bar13s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar13s/1").to route_to("bar13s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar13s/1").to route_to("bar13s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar13s/1").to route_to("bar13s#destroy", id: "1")
    end
  end
end
