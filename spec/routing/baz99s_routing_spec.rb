require "rails_helper"

RSpec.describe Baz99sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz99s").to route_to("baz99s#index")
    end

    it "routes to #new" do
      expect(get: "/baz99s/new").to route_to("baz99s#new")
    end

    it "routes to #show" do
      expect(get: "/baz99s/1").to route_to("baz99s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz99s/1/edit").to route_to("baz99s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz99s").to route_to("baz99s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz99s/1").to route_to("baz99s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz99s/1").to route_to("baz99s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz99s/1").to route_to("baz99s#destroy", id: "1")
    end
  end
end
