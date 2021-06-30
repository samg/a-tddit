require "rails_helper"

RSpec.describe Bar17sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar17s").to route_to("bar17s#index")
    end

    it "routes to #new" do
      expect(get: "/bar17s/new").to route_to("bar17s#new")
    end

    it "routes to #show" do
      expect(get: "/bar17s/1").to route_to("bar17s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar17s/1/edit").to route_to("bar17s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar17s").to route_to("bar17s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar17s/1").to route_to("bar17s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar17s/1").to route_to("bar17s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar17s/1").to route_to("bar17s#destroy", id: "1")
    end
  end
end
