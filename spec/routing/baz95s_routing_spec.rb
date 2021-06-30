require "rails_helper"

RSpec.describe Baz95sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz95s").to route_to("baz95s#index")
    end

    it "routes to #new" do
      expect(get: "/baz95s/new").to route_to("baz95s#new")
    end

    it "routes to #show" do
      expect(get: "/baz95s/1").to route_to("baz95s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz95s/1/edit").to route_to("baz95s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz95s").to route_to("baz95s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz95s/1").to route_to("baz95s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz95s/1").to route_to("baz95s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz95s/1").to route_to("baz95s#destroy", id: "1")
    end
  end
end
