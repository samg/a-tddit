require "rails_helper"

RSpec.describe Baz27sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz27s").to route_to("baz27s#index")
    end

    it "routes to #new" do
      expect(get: "/baz27s/new").to route_to("baz27s#new")
    end

    it "routes to #show" do
      expect(get: "/baz27s/1").to route_to("baz27s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz27s/1/edit").to route_to("baz27s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz27s").to route_to("baz27s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz27s/1").to route_to("baz27s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz27s/1").to route_to("baz27s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz27s/1").to route_to("baz27s#destroy", id: "1")
    end
  end
end
