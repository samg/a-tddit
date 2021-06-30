require "rails_helper"

RSpec.describe Baz64sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz64s").to route_to("baz64s#index")
    end

    it "routes to #new" do
      expect(get: "/baz64s/new").to route_to("baz64s#new")
    end

    it "routes to #show" do
      expect(get: "/baz64s/1").to route_to("baz64s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz64s/1/edit").to route_to("baz64s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz64s").to route_to("baz64s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz64s/1").to route_to("baz64s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz64s/1").to route_to("baz64s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz64s/1").to route_to("baz64s#destroy", id: "1")
    end
  end
end
