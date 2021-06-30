require "rails_helper"

RSpec.describe Bar72sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar72s").to route_to("bar72s#index")
    end

    it "routes to #new" do
      expect(get: "/bar72s/new").to route_to("bar72s#new")
    end

    it "routes to #show" do
      expect(get: "/bar72s/1").to route_to("bar72s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar72s/1/edit").to route_to("bar72s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar72s").to route_to("bar72s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar72s/1").to route_to("bar72s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar72s/1").to route_to("bar72s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar72s/1").to route_to("bar72s#destroy", id: "1")
    end
  end
end
