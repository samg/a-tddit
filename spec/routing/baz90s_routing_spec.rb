require "rails_helper"

RSpec.describe Baz90sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz90s").to route_to("baz90s#index")
    end

    it "routes to #new" do
      expect(get: "/baz90s/new").to route_to("baz90s#new")
    end

    it "routes to #show" do
      expect(get: "/baz90s/1").to route_to("baz90s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz90s/1/edit").to route_to("baz90s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz90s").to route_to("baz90s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz90s/1").to route_to("baz90s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz90s/1").to route_to("baz90s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz90s/1").to route_to("baz90s#destroy", id: "1")
    end
  end
end
