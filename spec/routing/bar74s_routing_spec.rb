require "rails_helper"

RSpec.describe Bar74sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar74s").to route_to("bar74s#index")
    end

    it "routes to #new" do
      expect(get: "/bar74s/new").to route_to("bar74s#new")
    end

    it "routes to #show" do
      expect(get: "/bar74s/1").to route_to("bar74s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar74s/1/edit").to route_to("bar74s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar74s").to route_to("bar74s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar74s/1").to route_to("bar74s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar74s/1").to route_to("bar74s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar74s/1").to route_to("bar74s#destroy", id: "1")
    end
  end
end
