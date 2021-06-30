require "rails_helper"

RSpec.describe Baz97sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz97s").to route_to("baz97s#index")
    end

    it "routes to #new" do
      expect(get: "/baz97s/new").to route_to("baz97s#new")
    end

    it "routes to #show" do
      expect(get: "/baz97s/1").to route_to("baz97s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz97s/1/edit").to route_to("baz97s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz97s").to route_to("baz97s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz97s/1").to route_to("baz97s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz97s/1").to route_to("baz97s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz97s/1").to route_to("baz97s#destroy", id: "1")
    end
  end
end
