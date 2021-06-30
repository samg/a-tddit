require "rails_helper"

RSpec.describe Baz36sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz36s").to route_to("baz36s#index")
    end

    it "routes to #new" do
      expect(get: "/baz36s/new").to route_to("baz36s#new")
    end

    it "routes to #show" do
      expect(get: "/baz36s/1").to route_to("baz36s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz36s/1/edit").to route_to("baz36s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz36s").to route_to("baz36s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz36s/1").to route_to("baz36s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz36s/1").to route_to("baz36s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz36s/1").to route_to("baz36s#destroy", id: "1")
    end
  end
end
