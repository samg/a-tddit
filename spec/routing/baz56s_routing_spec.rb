require "rails_helper"

RSpec.describe Baz56sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz56s").to route_to("baz56s#index")
    end

    it "routes to #new" do
      expect(get: "/baz56s/new").to route_to("baz56s#new")
    end

    it "routes to #show" do
      expect(get: "/baz56s/1").to route_to("baz56s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz56s/1/edit").to route_to("baz56s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz56s").to route_to("baz56s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz56s/1").to route_to("baz56s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz56s/1").to route_to("baz56s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz56s/1").to route_to("baz56s#destroy", id: "1")
    end
  end
end
