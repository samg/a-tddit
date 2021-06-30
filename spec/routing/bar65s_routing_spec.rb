require "rails_helper"

RSpec.describe Bar65sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar65s").to route_to("bar65s#index")
    end

    it "routes to #new" do
      expect(get: "/bar65s/new").to route_to("bar65s#new")
    end

    it "routes to #show" do
      expect(get: "/bar65s/1").to route_to("bar65s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar65s/1/edit").to route_to("bar65s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar65s").to route_to("bar65s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar65s/1").to route_to("bar65s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar65s/1").to route_to("bar65s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar65s/1").to route_to("bar65s#destroy", id: "1")
    end
  end
end
