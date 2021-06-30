require "rails_helper"

RSpec.describe Bar91sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar91s").to route_to("bar91s#index")
    end

    it "routes to #new" do
      expect(get: "/bar91s/new").to route_to("bar91s#new")
    end

    it "routes to #show" do
      expect(get: "/bar91s/1").to route_to("bar91s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar91s/1/edit").to route_to("bar91s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar91s").to route_to("bar91s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar91s/1").to route_to("bar91s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar91s/1").to route_to("bar91s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar91s/1").to route_to("bar91s#destroy", id: "1")
    end
  end
end
