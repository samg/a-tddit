require "rails_helper"

RSpec.describe Baz65sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz65s").to route_to("baz65s#index")
    end

    it "routes to #new" do
      expect(get: "/baz65s/new").to route_to("baz65s#new")
    end

    it "routes to #show" do
      expect(get: "/baz65s/1").to route_to("baz65s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz65s/1/edit").to route_to("baz65s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz65s").to route_to("baz65s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz65s/1").to route_to("baz65s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz65s/1").to route_to("baz65s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz65s/1").to route_to("baz65s#destroy", id: "1")
    end
  end
end
