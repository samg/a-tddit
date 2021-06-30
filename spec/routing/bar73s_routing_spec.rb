require "rails_helper"

RSpec.describe Bar73sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar73s").to route_to("bar73s#index")
    end

    it "routes to #new" do
      expect(get: "/bar73s/new").to route_to("bar73s#new")
    end

    it "routes to #show" do
      expect(get: "/bar73s/1").to route_to("bar73s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar73s/1/edit").to route_to("bar73s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar73s").to route_to("bar73s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar73s/1").to route_to("bar73s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar73s/1").to route_to("bar73s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar73s/1").to route_to("bar73s#destroy", id: "1")
    end
  end
end
