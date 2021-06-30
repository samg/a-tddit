require "rails_helper"

RSpec.describe Baz55sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz55s").to route_to("baz55s#index")
    end

    it "routes to #new" do
      expect(get: "/baz55s/new").to route_to("baz55s#new")
    end

    it "routes to #show" do
      expect(get: "/baz55s/1").to route_to("baz55s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz55s/1/edit").to route_to("baz55s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz55s").to route_to("baz55s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz55s/1").to route_to("baz55s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz55s/1").to route_to("baz55s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz55s/1").to route_to("baz55s#destroy", id: "1")
    end
  end
end
