require "rails_helper"

RSpec.describe Baz46sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz46s").to route_to("baz46s#index")
    end

    it "routes to #new" do
      expect(get: "/baz46s/new").to route_to("baz46s#new")
    end

    it "routes to #show" do
      expect(get: "/baz46s/1").to route_to("baz46s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz46s/1/edit").to route_to("baz46s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz46s").to route_to("baz46s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz46s/1").to route_to("baz46s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz46s/1").to route_to("baz46s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz46s/1").to route_to("baz46s#destroy", id: "1")
    end
  end
end
