require "rails_helper"

RSpec.describe Baz29sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz29s").to route_to("baz29s#index")
    end

    it "routes to #new" do
      expect(get: "/baz29s/new").to route_to("baz29s#new")
    end

    it "routes to #show" do
      expect(get: "/baz29s/1").to route_to("baz29s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz29s/1/edit").to route_to("baz29s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz29s").to route_to("baz29s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz29s/1").to route_to("baz29s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz29s/1").to route_to("baz29s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz29s/1").to route_to("baz29s#destroy", id: "1")
    end
  end
end
