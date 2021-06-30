require "rails_helper"

RSpec.describe Bar44sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar44s").to route_to("bar44s#index")
    end

    it "routes to #new" do
      expect(get: "/bar44s/new").to route_to("bar44s#new")
    end

    it "routes to #show" do
      expect(get: "/bar44s/1").to route_to("bar44s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar44s/1/edit").to route_to("bar44s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar44s").to route_to("bar44s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar44s/1").to route_to("bar44s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar44s/1").to route_to("bar44s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar44s/1").to route_to("bar44s#destroy", id: "1")
    end
  end
end
