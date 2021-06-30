require "rails_helper"

RSpec.describe Baz92sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz92s").to route_to("baz92s#index")
    end

    it "routes to #new" do
      expect(get: "/baz92s/new").to route_to("baz92s#new")
    end

    it "routes to #show" do
      expect(get: "/baz92s/1").to route_to("baz92s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz92s/1/edit").to route_to("baz92s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz92s").to route_to("baz92s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz92s/1").to route_to("baz92s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz92s/1").to route_to("baz92s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz92s/1").to route_to("baz92s#destroy", id: "1")
    end
  end
end
