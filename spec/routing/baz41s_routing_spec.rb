require "rails_helper"

RSpec.describe Baz41sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz41s").to route_to("baz41s#index")
    end

    it "routes to #new" do
      expect(get: "/baz41s/new").to route_to("baz41s#new")
    end

    it "routes to #show" do
      expect(get: "/baz41s/1").to route_to("baz41s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz41s/1/edit").to route_to("baz41s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz41s").to route_to("baz41s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz41s/1").to route_to("baz41s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz41s/1").to route_to("baz41s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz41s/1").to route_to("baz41s#destroy", id: "1")
    end
  end
end
