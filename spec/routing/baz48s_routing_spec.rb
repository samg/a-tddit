require "rails_helper"

RSpec.describe Baz48sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz48s").to route_to("baz48s#index")
    end

    it "routes to #new" do
      expect(get: "/baz48s/new").to route_to("baz48s#new")
    end

    it "routes to #show" do
      expect(get: "/baz48s/1").to route_to("baz48s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz48s/1/edit").to route_to("baz48s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz48s").to route_to("baz48s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz48s/1").to route_to("baz48s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz48s/1").to route_to("baz48s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz48s/1").to route_to("baz48s#destroy", id: "1")
    end
  end
end
