require "rails_helper"

RSpec.describe Baz77sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz77s").to route_to("baz77s#index")
    end

    it "routes to #new" do
      expect(get: "/baz77s/new").to route_to("baz77s#new")
    end

    it "routes to #show" do
      expect(get: "/baz77s/1").to route_to("baz77s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz77s/1/edit").to route_to("baz77s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz77s").to route_to("baz77s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz77s/1").to route_to("baz77s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz77s/1").to route_to("baz77s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz77s/1").to route_to("baz77s#destroy", id: "1")
    end
  end
end
