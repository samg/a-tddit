require "rails_helper"

RSpec.describe Baz94sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz94s").to route_to("baz94s#index")
    end

    it "routes to #new" do
      expect(get: "/baz94s/new").to route_to("baz94s#new")
    end

    it "routes to #show" do
      expect(get: "/baz94s/1").to route_to("baz94s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz94s/1/edit").to route_to("baz94s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz94s").to route_to("baz94s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz94s/1").to route_to("baz94s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz94s/1").to route_to("baz94s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz94s/1").to route_to("baz94s#destroy", id: "1")
    end
  end
end
