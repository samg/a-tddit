require "rails_helper"

RSpec.describe Bar26sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar26s").to route_to("bar26s#index")
    end

    it "routes to #new" do
      expect(get: "/bar26s/new").to route_to("bar26s#new")
    end

    it "routes to #show" do
      expect(get: "/bar26s/1").to route_to("bar26s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar26s/1/edit").to route_to("bar26s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar26s").to route_to("bar26s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar26s/1").to route_to("bar26s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar26s/1").to route_to("bar26s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar26s/1").to route_to("bar26s#destroy", id: "1")
    end
  end
end
