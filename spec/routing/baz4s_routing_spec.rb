require "rails_helper"

RSpec.describe Baz4sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz4s").to route_to("baz4s#index")
    end

    it "routes to #new" do
      expect(get: "/baz4s/new").to route_to("baz4s#new")
    end

    it "routes to #show" do
      expect(get: "/baz4s/1").to route_to("baz4s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz4s/1/edit").to route_to("baz4s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz4s").to route_to("baz4s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz4s/1").to route_to("baz4s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz4s/1").to route_to("baz4s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz4s/1").to route_to("baz4s#destroy", id: "1")
    end
  end
end
