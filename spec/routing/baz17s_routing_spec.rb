require "rails_helper"

RSpec.describe Baz17sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz17s").to route_to("baz17s#index")
    end

    it "routes to #new" do
      expect(get: "/baz17s/new").to route_to("baz17s#new")
    end

    it "routes to #show" do
      expect(get: "/baz17s/1").to route_to("baz17s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz17s/1/edit").to route_to("baz17s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz17s").to route_to("baz17s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz17s/1").to route_to("baz17s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz17s/1").to route_to("baz17s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz17s/1").to route_to("baz17s#destroy", id: "1")
    end
  end
end
