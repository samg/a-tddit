require "rails_helper"

RSpec.describe Baz25sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz25s").to route_to("baz25s#index")
    end

    it "routes to #new" do
      expect(get: "/baz25s/new").to route_to("baz25s#new")
    end

    it "routes to #show" do
      expect(get: "/baz25s/1").to route_to("baz25s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz25s/1/edit").to route_to("baz25s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz25s").to route_to("baz25s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz25s/1").to route_to("baz25s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz25s/1").to route_to("baz25s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz25s/1").to route_to("baz25s#destroy", id: "1")
    end
  end
end
