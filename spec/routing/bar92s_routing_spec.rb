require "rails_helper"

RSpec.describe Bar92sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar92s").to route_to("bar92s#index")
    end

    it "routes to #new" do
      expect(get: "/bar92s/new").to route_to("bar92s#new")
    end

    it "routes to #show" do
      expect(get: "/bar92s/1").to route_to("bar92s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar92s/1/edit").to route_to("bar92s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar92s").to route_to("bar92s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar92s/1").to route_to("bar92s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar92s/1").to route_to("bar92s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar92s/1").to route_to("bar92s#destroy", id: "1")
    end
  end
end
