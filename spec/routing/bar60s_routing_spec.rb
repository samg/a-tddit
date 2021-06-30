require "rails_helper"

RSpec.describe Bar60sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar60s").to route_to("bar60s#index")
    end

    it "routes to #new" do
      expect(get: "/bar60s/new").to route_to("bar60s#new")
    end

    it "routes to #show" do
      expect(get: "/bar60s/1").to route_to("bar60s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar60s/1/edit").to route_to("bar60s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar60s").to route_to("bar60s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar60s/1").to route_to("bar60s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar60s/1").to route_to("bar60s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar60s/1").to route_to("bar60s#destroy", id: "1")
    end
  end
end
