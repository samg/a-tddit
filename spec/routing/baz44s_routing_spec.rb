require "rails_helper"

RSpec.describe Baz44sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz44s").to route_to("baz44s#index")
    end

    it "routes to #new" do
      expect(get: "/baz44s/new").to route_to("baz44s#new")
    end

    it "routes to #show" do
      expect(get: "/baz44s/1").to route_to("baz44s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz44s/1/edit").to route_to("baz44s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz44s").to route_to("baz44s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz44s/1").to route_to("baz44s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz44s/1").to route_to("baz44s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz44s/1").to route_to("baz44s#destroy", id: "1")
    end
  end
end
