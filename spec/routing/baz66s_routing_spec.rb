require "rails_helper"

RSpec.describe Baz66sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz66s").to route_to("baz66s#index")
    end

    it "routes to #new" do
      expect(get: "/baz66s/new").to route_to("baz66s#new")
    end

    it "routes to #show" do
      expect(get: "/baz66s/1").to route_to("baz66s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz66s/1/edit").to route_to("baz66s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz66s").to route_to("baz66s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz66s/1").to route_to("baz66s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz66s/1").to route_to("baz66s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz66s/1").to route_to("baz66s#destroy", id: "1")
    end
  end
end
