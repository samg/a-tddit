require "rails_helper"

RSpec.describe Baz1sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz1s").to route_to("baz1s#index")
    end

    it "routes to #new" do
      expect(get: "/baz1s/new").to route_to("baz1s#new")
    end

    it "routes to #show" do
      expect(get: "/baz1s/1").to route_to("baz1s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz1s/1/edit").to route_to("baz1s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz1s").to route_to("baz1s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz1s/1").to route_to("baz1s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz1s/1").to route_to("baz1s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz1s/1").to route_to("baz1s#destroy", id: "1")
    end
  end
end
