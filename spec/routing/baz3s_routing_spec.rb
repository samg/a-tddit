require "rails_helper"

RSpec.describe Baz3sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz3s").to route_to("baz3s#index")
    end

    it "routes to #new" do
      expect(get: "/baz3s/new").to route_to("baz3s#new")
    end

    it "routes to #show" do
      expect(get: "/baz3s/1").to route_to("baz3s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz3s/1/edit").to route_to("baz3s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz3s").to route_to("baz3s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz3s/1").to route_to("baz3s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz3s/1").to route_to("baz3s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz3s/1").to route_to("baz3s#destroy", id: "1")
    end
  end
end
