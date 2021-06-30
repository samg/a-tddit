require "rails_helper"

RSpec.describe Bar16sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar16s").to route_to("bar16s#index")
    end

    it "routes to #new" do
      expect(get: "/bar16s/new").to route_to("bar16s#new")
    end

    it "routes to #show" do
      expect(get: "/bar16s/1").to route_to("bar16s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar16s/1/edit").to route_to("bar16s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar16s").to route_to("bar16s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar16s/1").to route_to("bar16s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar16s/1").to route_to("bar16s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar16s/1").to route_to("bar16s#destroy", id: "1")
    end
  end
end
