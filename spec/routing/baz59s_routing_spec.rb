require "rails_helper"

RSpec.describe Baz59sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz59s").to route_to("baz59s#index")
    end

    it "routes to #new" do
      expect(get: "/baz59s/new").to route_to("baz59s#new")
    end

    it "routes to #show" do
      expect(get: "/baz59s/1").to route_to("baz59s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz59s/1/edit").to route_to("baz59s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz59s").to route_to("baz59s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz59s/1").to route_to("baz59s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz59s/1").to route_to("baz59s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz59s/1").to route_to("baz59s#destroy", id: "1")
    end
  end
end
