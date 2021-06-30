require "rails_helper"

RSpec.describe Baz49sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz49s").to route_to("baz49s#index")
    end

    it "routes to #new" do
      expect(get: "/baz49s/new").to route_to("baz49s#new")
    end

    it "routes to #show" do
      expect(get: "/baz49s/1").to route_to("baz49s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz49s/1/edit").to route_to("baz49s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz49s").to route_to("baz49s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz49s/1").to route_to("baz49s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz49s/1").to route_to("baz49s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz49s/1").to route_to("baz49s#destroy", id: "1")
    end
  end
end
