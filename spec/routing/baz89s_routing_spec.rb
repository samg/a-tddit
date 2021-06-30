require "rails_helper"

RSpec.describe Baz89sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/baz89s").to route_to("baz89s#index")
    end

    it "routes to #new" do
      expect(get: "/baz89s/new").to route_to("baz89s#new")
    end

    it "routes to #show" do
      expect(get: "/baz89s/1").to route_to("baz89s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/baz89s/1/edit").to route_to("baz89s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/baz89s").to route_to("baz89s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/baz89s/1").to route_to("baz89s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/baz89s/1").to route_to("baz89s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/baz89s/1").to route_to("baz89s#destroy", id: "1")
    end
  end
end
