require "rails_helper"

RSpec.describe Bar4sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar4s").to route_to("bar4s#index")
    end

    it "routes to #new" do
      expect(get: "/bar4s/new").to route_to("bar4s#new")
    end

    it "routes to #show" do
      expect(get: "/bar4s/1").to route_to("bar4s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar4s/1/edit").to route_to("bar4s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar4s").to route_to("bar4s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar4s/1").to route_to("bar4s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar4s/1").to route_to("bar4s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar4s/1").to route_to("bar4s#destroy", id: "1")
    end
  end
end
