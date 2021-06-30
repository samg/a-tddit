require "rails_helper"

RSpec.describe Baz91sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz91s").to route_to("baz91s#index")
    end

    it "routes to #new" do
      expect(get: "/baz91s/new").to route_to("baz91s#new")
    end

    it "routes to #show" do
      expect(get: "/baz91s/1").to route_to("baz91s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz91s/1/edit").to route_to("baz91s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz91s").to route_to("baz91s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz91s/1").to route_to("baz91s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz91s/1").to route_to("baz91s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz91s/1").to route_to("baz91s#destroy", id: "1")
    end
  end
end
