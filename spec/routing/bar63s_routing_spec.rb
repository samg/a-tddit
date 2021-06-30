require "rails_helper"

RSpec.describe Bar63sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar63s").to route_to("bar63s#index")
    end

    it "routes to #new" do
      expect(get: "/bar63s/new").to route_to("bar63s#new")
    end

    it "routes to #show" do
      expect(get: "/bar63s/1").to route_to("bar63s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar63s/1/edit").to route_to("bar63s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar63s").to route_to("bar63s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar63s/1").to route_to("bar63s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar63s/1").to route_to("bar63s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar63s/1").to route_to("bar63s#destroy", id: "1")
    end
  end
end
