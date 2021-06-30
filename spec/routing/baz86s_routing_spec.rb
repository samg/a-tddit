require "rails_helper"

RSpec.describe Baz86sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz86s").to route_to("baz86s#index")
    end

    it "routes to #new" do
      expect(get: "/baz86s/new").to route_to("baz86s#new")
    end

    it "routes to #show" do
      expect(get: "/baz86s/1").to route_to("baz86s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz86s/1/edit").to route_to("baz86s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz86s").to route_to("baz86s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz86s/1").to route_to("baz86s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz86s/1").to route_to("baz86s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz86s/1").to route_to("baz86s#destroy", id: "1")
    end
  end
end
