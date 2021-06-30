require "rails_helper"

RSpec.describe Baz34sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz34s").to route_to("baz34s#index")
    end

    it "routes to #new" do
      expect(get: "/baz34s/new").to route_to("baz34s#new")
    end

    it "routes to #show" do
      expect(get: "/baz34s/1").to route_to("baz34s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz34s/1/edit").to route_to("baz34s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz34s").to route_to("baz34s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz34s/1").to route_to("baz34s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz34s/1").to route_to("baz34s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz34s/1").to route_to("baz34s#destroy", id: "1")
    end
  end
end
