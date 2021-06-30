require "rails_helper"

RSpec.describe Bar6sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar6s").to route_to("bar6s#index")
    end

    it "routes to #new" do
      expect(get: "/bar6s/new").to route_to("bar6s#new")
    end

    it "routes to #show" do
      expect(get: "/bar6s/1").to route_to("bar6s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar6s/1/edit").to route_to("bar6s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar6s").to route_to("bar6s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar6s/1").to route_to("bar6s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar6s/1").to route_to("bar6s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar6s/1").to route_to("bar6s#destroy", id: "1")
    end
  end
end
