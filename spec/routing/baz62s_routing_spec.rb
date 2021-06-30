require "rails_helper"

RSpec.describe Baz62sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz62s").to route_to("baz62s#index")
    end

    it "routes to #new" do
      expect(get: "/baz62s/new").to route_to("baz62s#new")
    end

    it "routes to #show" do
      expect(get: "/baz62s/1").to route_to("baz62s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz62s/1/edit").to route_to("baz62s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz62s").to route_to("baz62s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz62s/1").to route_to("baz62s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz62s/1").to route_to("baz62s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz62s/1").to route_to("baz62s#destroy", id: "1")
    end
  end
end
