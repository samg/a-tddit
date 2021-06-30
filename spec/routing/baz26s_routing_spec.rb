require "rails_helper"

RSpec.describe Baz26sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz26s").to route_to("baz26s#index")
    end

    it "routes to #new" do
      expect(get: "/baz26s/new").to route_to("baz26s#new")
    end

    it "routes to #show" do
      expect(get: "/baz26s/1").to route_to("baz26s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz26s/1/edit").to route_to("baz26s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz26s").to route_to("baz26s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz26s/1").to route_to("baz26s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz26s/1").to route_to("baz26s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz26s/1").to route_to("baz26s#destroy", id: "1")
    end
  end
end
