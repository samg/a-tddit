require "rails_helper"

RSpec.describe Baz5sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz5s").to route_to("baz5s#index")
    end

    it "routes to #new" do
      expect(get: "/baz5s/new").to route_to("baz5s#new")
    end

    it "routes to #show" do
      expect(get: "/baz5s/1").to route_to("baz5s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz5s/1/edit").to route_to("baz5s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz5s").to route_to("baz5s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz5s/1").to route_to("baz5s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz5s/1").to route_to("baz5s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz5s/1").to route_to("baz5s#destroy", id: "1")
    end
  end
end
