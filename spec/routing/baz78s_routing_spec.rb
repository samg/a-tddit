require "rails_helper"

RSpec.describe Baz78sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz78s").to route_to("baz78s#index")
    end

    it "routes to #new" do
      expect(get: "/baz78s/new").to route_to("baz78s#new")
    end

    it "routes to #show" do
      expect(get: "/baz78s/1").to route_to("baz78s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz78s/1/edit").to route_to("baz78s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz78s").to route_to("baz78s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz78s/1").to route_to("baz78s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz78s/1").to route_to("baz78s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz78s/1").to route_to("baz78s#destroy", id: "1")
    end
  end
end
