require "rails_helper"

RSpec.describe Baz61sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz61s").to route_to("baz61s#index")
    end

    it "routes to #new" do
      expect(get: "/baz61s/new").to route_to("baz61s#new")
    end

    it "routes to #show" do
      expect(get: "/baz61s/1").to route_to("baz61s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz61s/1/edit").to route_to("baz61s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz61s").to route_to("baz61s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz61s/1").to route_to("baz61s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz61s/1").to route_to("baz61s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz61s/1").to route_to("baz61s#destroy", id: "1")
    end
  end
end
