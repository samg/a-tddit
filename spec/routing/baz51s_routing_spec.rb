require "rails_helper"

RSpec.describe Baz51sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz51s").to route_to("baz51s#index")
    end

    it "routes to #new" do
      expect(get: "/baz51s/new").to route_to("baz51s#new")
    end

    it "routes to #show" do
      expect(get: "/baz51s/1").to route_to("baz51s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz51s/1/edit").to route_to("baz51s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz51s").to route_to("baz51s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz51s/1").to route_to("baz51s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz51s/1").to route_to("baz51s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz51s/1").to route_to("baz51s#destroy", id: "1")
    end
  end
end
