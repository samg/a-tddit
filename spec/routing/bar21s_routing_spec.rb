require "rails_helper"

RSpec.describe Bar21sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar21s").to route_to("bar21s#index")
    end

    it "routes to #new" do
      expect(get: "/bar21s/new").to route_to("bar21s#new")
    end

    it "routes to #show" do
      expect(get: "/bar21s/1").to route_to("bar21s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar21s/1/edit").to route_to("bar21s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar21s").to route_to("bar21s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar21s/1").to route_to("bar21s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar21s/1").to route_to("bar21s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar21s/1").to route_to("bar21s#destroy", id: "1")
    end
  end
end
