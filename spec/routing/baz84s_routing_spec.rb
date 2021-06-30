require "rails_helper"

RSpec.describe Baz84sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz84s").to route_to("baz84s#index")
    end

    it "routes to #new" do
      expect(get: "/baz84s/new").to route_to("baz84s#new")
    end

    it "routes to #show" do
      expect(get: "/baz84s/1").to route_to("baz84s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz84s/1/edit").to route_to("baz84s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz84s").to route_to("baz84s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz84s/1").to route_to("baz84s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz84s/1").to route_to("baz84s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz84s/1").to route_to("baz84s#destroy", id: "1")
    end
  end
end
