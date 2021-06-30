require "rails_helper"

RSpec.describe Bar33sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar33s").to route_to("bar33s#index")
    end

    it "routes to #new" do
      expect(get: "/bar33s/new").to route_to("bar33s#new")
    end

    it "routes to #show" do
      expect(get: "/bar33s/1").to route_to("bar33s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar33s/1/edit").to route_to("bar33s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar33s").to route_to("bar33s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar33s/1").to route_to("bar33s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar33s/1").to route_to("bar33s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar33s/1").to route_to("bar33s#destroy", id: "1")
    end
  end
end
