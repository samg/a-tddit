require "rails_helper"

RSpec.describe Baz69sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz69s").to route_to("baz69s#index")
    end

    it "routes to #new" do
      expect(get: "/baz69s/new").to route_to("baz69s#new")
    end

    it "routes to #show" do
      expect(get: "/baz69s/1").to route_to("baz69s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz69s/1/edit").to route_to("baz69s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz69s").to route_to("baz69s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz69s/1").to route_to("baz69s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz69s/1").to route_to("baz69s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz69s/1").to route_to("baz69s#destroy", id: "1")
    end
  end
end
