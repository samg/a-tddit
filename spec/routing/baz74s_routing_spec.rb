require "rails_helper"

RSpec.describe Baz74sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz74s").to route_to("baz74s#index")
    end

    it "routes to #new" do
      expect(get: "/baz74s/new").to route_to("baz74s#new")
    end

    it "routes to #show" do
      expect(get: "/baz74s/1").to route_to("baz74s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz74s/1/edit").to route_to("baz74s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz74s").to route_to("baz74s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz74s/1").to route_to("baz74s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz74s/1").to route_to("baz74s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz74s/1").to route_to("baz74s#destroy", id: "1")
    end
  end
end
