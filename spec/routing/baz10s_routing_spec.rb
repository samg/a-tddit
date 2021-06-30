require "rails_helper"

RSpec.describe Baz10sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz10s").to route_to("baz10s#index")
    end

    it "routes to #new" do
      expect(get: "/baz10s/new").to route_to("baz10s#new")
    end

    it "routes to #show" do
      expect(get: "/baz10s/1").to route_to("baz10s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz10s/1/edit").to route_to("baz10s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz10s").to route_to("baz10s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz10s/1").to route_to("baz10s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz10s/1").to route_to("baz10s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz10s/1").to route_to("baz10s#destroy", id: "1")
    end
  end
end
