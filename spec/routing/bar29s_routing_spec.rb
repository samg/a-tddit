require "rails_helper"

RSpec.describe Bar29sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar29s").to route_to("bar29s#index")
    end

    it "routes to #new" do
      expect(get: "/bar29s/new").to route_to("bar29s#new")
    end

    it "routes to #show" do
      expect(get: "/bar29s/1").to route_to("bar29s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar29s/1/edit").to route_to("bar29s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar29s").to route_to("bar29s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar29s/1").to route_to("bar29s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar29s/1").to route_to("bar29s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar29s/1").to route_to("bar29s#destroy", id: "1")
    end
  end
end
