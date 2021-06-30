require "rails_helper"

RSpec.describe Baz70sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz70s").to route_to("baz70s#index")
    end

    it "routes to #new" do
      expect(get: "/baz70s/new").to route_to("baz70s#new")
    end

    it "routes to #show" do
      expect(get: "/baz70s/1").to route_to("baz70s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz70s/1/edit").to route_to("baz70s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz70s").to route_to("baz70s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz70s/1").to route_to("baz70s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz70s/1").to route_to("baz70s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz70s/1").to route_to("baz70s#destroy", id: "1")
    end
  end
end
