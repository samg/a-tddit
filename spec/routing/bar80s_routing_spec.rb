require "rails_helper"

RSpec.describe Bar80sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar80s").to route_to("bar80s#index")
    end

    it "routes to #new" do
      expect(get: "/bar80s/new").to route_to("bar80s#new")
    end

    it "routes to #show" do
      expect(get: "/bar80s/1").to route_to("bar80s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar80s/1/edit").to route_to("bar80s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar80s").to route_to("bar80s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar80s/1").to route_to("bar80s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar80s/1").to route_to("bar80s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar80s/1").to route_to("bar80s#destroy", id: "1")
    end
  end
end
