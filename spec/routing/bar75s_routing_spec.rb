require "rails_helper"

RSpec.describe Bar75sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar75s").to route_to("bar75s#index")
    end

    it "routes to #new" do
      expect(get: "/bar75s/new").to route_to("bar75s#new")
    end

    it "routes to #show" do
      expect(get: "/bar75s/1").to route_to("bar75s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar75s/1/edit").to route_to("bar75s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar75s").to route_to("bar75s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar75s/1").to route_to("bar75s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar75s/1").to route_to("bar75s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar75s/1").to route_to("bar75s#destroy", id: "1")
    end
  end
end