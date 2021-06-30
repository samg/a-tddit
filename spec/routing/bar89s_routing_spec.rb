require "rails_helper"

RSpec.describe Bar89sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar89s").to route_to("bar89s#index")
    end

    it "routes to #new" do
      expect(get: "/bar89s/new").to route_to("bar89s#new")
    end

    it "routes to #show" do
      expect(get: "/bar89s/1").to route_to("bar89s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar89s/1/edit").to route_to("bar89s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar89s").to route_to("bar89s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar89s/1").to route_to("bar89s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar89s/1").to route_to("bar89s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar89s/1").to route_to("bar89s#destroy", id: "1")
    end
  end
end
