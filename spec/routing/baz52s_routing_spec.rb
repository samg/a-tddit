require "rails_helper"

RSpec.describe Baz52sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz52s").to route_to("baz52s#index")
    end

    it "routes to #new" do
      expect(get: "/baz52s/new").to route_to("baz52s#new")
    end

    it "routes to #show" do
      expect(get: "/baz52s/1").to route_to("baz52s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz52s/1/edit").to route_to("baz52s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz52s").to route_to("baz52s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz52s/1").to route_to("baz52s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz52s/1").to route_to("baz52s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz52s/1").to route_to("baz52s#destroy", id: "1")
    end
  end
end
