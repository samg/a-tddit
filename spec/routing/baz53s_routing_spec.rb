require "rails_helper"

RSpec.describe Baz53sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz53s").to route_to("baz53s#index")
    end

    it "routes to #new" do
      expect(get: "/baz53s/new").to route_to("baz53s#new")
    end

    it "routes to #show" do
      expect(get: "/baz53s/1").to route_to("baz53s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz53s/1/edit").to route_to("baz53s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz53s").to route_to("baz53s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz53s/1").to route_to("baz53s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz53s/1").to route_to("baz53s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz53s/1").to route_to("baz53s#destroy", id: "1")
    end
  end
end
