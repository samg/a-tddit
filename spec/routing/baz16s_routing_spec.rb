require "rails_helper"

RSpec.describe Baz16sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz16s").to route_to("baz16s#index")
    end

    it "routes to #new" do
      expect(get: "/baz16s/new").to route_to("baz16s#new")
    end

    it "routes to #show" do
      expect(get: "/baz16s/1").to route_to("baz16s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz16s/1/edit").to route_to("baz16s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz16s").to route_to("baz16s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz16s/1").to route_to("baz16s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz16s/1").to route_to("baz16s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz16s/1").to route_to("baz16s#destroy", id: "1")
    end
  end
end
