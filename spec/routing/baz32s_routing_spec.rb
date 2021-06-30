require "rails_helper"

RSpec.describe Baz32sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz32s").to route_to("baz32s#index")
    end

    it "routes to #new" do
      expect(get: "/baz32s/new").to route_to("baz32s#new")
    end

    it "routes to #show" do
      expect(get: "/baz32s/1").to route_to("baz32s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz32s/1/edit").to route_to("baz32s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz32s").to route_to("baz32s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz32s/1").to route_to("baz32s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz32s/1").to route_to("baz32s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz32s/1").to route_to("baz32s#destroy", id: "1")
    end
  end
end
