require "rails_helper"

RSpec.describe Baz35sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz35s").to route_to("baz35s#index")
    end

    it "routes to #new" do
      expect(get: "/baz35s/new").to route_to("baz35s#new")
    end

    it "routes to #show" do
      expect(get: "/baz35s/1").to route_to("baz35s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz35s/1/edit").to route_to("baz35s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz35s").to route_to("baz35s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz35s/1").to route_to("baz35s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz35s/1").to route_to("baz35s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz35s/1").to route_to("baz35s#destroy", id: "1")
    end
  end
end
