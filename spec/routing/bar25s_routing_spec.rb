require "rails_helper"

RSpec.describe Bar25sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar25s").to route_to("bar25s#index")
    end

    it "routes to #new" do
      expect(get: "/bar25s/new").to route_to("bar25s#new")
    end

    it "routes to #show" do
      expect(get: "/bar25s/1").to route_to("bar25s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar25s/1/edit").to route_to("bar25s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar25s").to route_to("bar25s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar25s/1").to route_to("bar25s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar25s/1").to route_to("bar25s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar25s/1").to route_to("bar25s#destroy", id: "1")
    end
  end
end
