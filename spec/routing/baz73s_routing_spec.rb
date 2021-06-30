require "rails_helper"

RSpec.describe Baz73sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz73s").to route_to("baz73s#index")
    end

    it "routes to #new" do
      expect(get: "/baz73s/new").to route_to("baz73s#new")
    end

    it "routes to #show" do
      expect(get: "/baz73s/1").to route_to("baz73s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz73s/1/edit").to route_to("baz73s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz73s").to route_to("baz73s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz73s/1").to route_to("baz73s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz73s/1").to route_to("baz73s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz73s/1").to route_to("baz73s#destroy", id: "1")
    end
  end
end
