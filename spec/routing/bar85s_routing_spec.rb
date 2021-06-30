require "rails_helper"

RSpec.describe Bar85sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar85s").to route_to("bar85s#index")
    end

    it "routes to #new" do
      expect(get: "/bar85s/new").to route_to("bar85s#new")
    end

    it "routes to #show" do
      expect(get: "/bar85s/1").to route_to("bar85s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar85s/1/edit").to route_to("bar85s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar85s").to route_to("bar85s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar85s/1").to route_to("bar85s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar85s/1").to route_to("bar85s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar85s/1").to route_to("bar85s#destroy", id: "1")
    end
  end
end
