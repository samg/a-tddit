require "rails_helper"

RSpec.describe Baz22sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz22s").to route_to("baz22s#index")
    end

    it "routes to #new" do
      expect(get: "/baz22s/new").to route_to("baz22s#new")
    end

    it "routes to #show" do
      expect(get: "/baz22s/1").to route_to("baz22s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz22s/1/edit").to route_to("baz22s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz22s").to route_to("baz22s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz22s/1").to route_to("baz22s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz22s/1").to route_to("baz22s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz22s/1").to route_to("baz22s#destroy", id: "1")
    end
  end
end
