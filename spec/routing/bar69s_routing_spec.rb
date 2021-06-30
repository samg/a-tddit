require "rails_helper"

RSpec.describe Bar69sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar69s").to route_to("bar69s#index")
    end

    it "routes to #new" do
      expect(get: "/bar69s/new").to route_to("bar69s#new")
    end

    it "routes to #show" do
      expect(get: "/bar69s/1").to route_to("bar69s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar69s/1/edit").to route_to("bar69s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar69s").to route_to("bar69s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar69s/1").to route_to("bar69s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar69s/1").to route_to("bar69s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar69s/1").to route_to("bar69s#destroy", id: "1")
    end
  end
end
