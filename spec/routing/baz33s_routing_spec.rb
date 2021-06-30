require "rails_helper"

RSpec.describe Baz33sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz33s").to route_to("baz33s#index")
    end

    it "routes to #new" do
      expect(get: "/baz33s/new").to route_to("baz33s#new")
    end

    it "routes to #show" do
      expect(get: "/baz33s/1").to route_to("baz33s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz33s/1/edit").to route_to("baz33s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz33s").to route_to("baz33s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz33s/1").to route_to("baz33s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz33s/1").to route_to("baz33s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz33s/1").to route_to("baz33s#destroy", id: "1")
    end
  end
end
