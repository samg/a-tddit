require "rails_helper"

RSpec.describe Baz100sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz100s").to route_to("baz100s#index")
    end

    it "routes to #new" do
      expect(get: "/baz100s/new").to route_to("baz100s#new")
    end

    it "routes to #show" do
      expect(get: "/baz100s/1").to route_to("baz100s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz100s/1/edit").to route_to("baz100s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz100s").to route_to("baz100s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz100s/1").to route_to("baz100s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz100s/1").to route_to("baz100s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz100s/1").to route_to("baz100s#destroy", id: "1")
    end
  end
end
