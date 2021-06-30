require "rails_helper"

RSpec.describe Baz13sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz13s").to route_to("baz13s#index")
    end

    it "routes to #new" do
      expect(get: "/baz13s/new").to route_to("baz13s#new")
    end

    it "routes to #show" do
      expect(get: "/baz13s/1").to route_to("baz13s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz13s/1/edit").to route_to("baz13s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz13s").to route_to("baz13s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz13s/1").to route_to("baz13s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz13s/1").to route_to("baz13s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz13s/1").to route_to("baz13s#destroy", id: "1")
    end
  end
end
