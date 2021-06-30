require "rails_helper"

RSpec.describe Bar15sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar15s").to route_to("bar15s#index")
    end

    it "routes to #new" do
      expect(get: "/bar15s/new").to route_to("bar15s#new")
    end

    it "routes to #show" do
      expect(get: "/bar15s/1").to route_to("bar15s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar15s/1/edit").to route_to("bar15s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar15s").to route_to("bar15s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar15s/1").to route_to("bar15s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar15s/1").to route_to("bar15s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar15s/1").to route_to("bar15s#destroy", id: "1")
    end
  end
end
