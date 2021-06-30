require "rails_helper"

RSpec.describe Bar42sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar42s").to route_to("bar42s#index")
    end

    it "routes to #new" do
      expect(get: "/bar42s/new").to route_to("bar42s#new")
    end

    it "routes to #show" do
      expect(get: "/bar42s/1").to route_to("bar42s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar42s/1/edit").to route_to("bar42s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar42s").to route_to("bar42s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar42s/1").to route_to("bar42s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar42s/1").to route_to("bar42s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar42s/1").to route_to("bar42s#destroy", id: "1")
    end
  end
end
