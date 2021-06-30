require "rails_helper"

RSpec.describe Baz81sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz81s").to route_to("baz81s#index")
    end

    it "routes to #new" do
      expect(get: "/baz81s/new").to route_to("baz81s#new")
    end

    it "routes to #show" do
      expect(get: "/baz81s/1").to route_to("baz81s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz81s/1/edit").to route_to("baz81s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz81s").to route_to("baz81s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz81s/1").to route_to("baz81s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz81s/1").to route_to("baz81s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz81s/1").to route_to("baz81s#destroy", id: "1")
    end
  end
end
