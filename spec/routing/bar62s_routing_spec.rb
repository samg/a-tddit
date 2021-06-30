require "rails_helper"

RSpec.describe Bar62sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar62s").to route_to("bar62s#index")
    end

    it "routes to #new" do
      expect(get: "/bar62s/new").to route_to("bar62s#new")
    end

    it "routes to #show" do
      expect(get: "/bar62s/1").to route_to("bar62s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar62s/1/edit").to route_to("bar62s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar62s").to route_to("bar62s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar62s/1").to route_to("bar62s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar62s/1").to route_to("bar62s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar62s/1").to route_to("bar62s#destroy", id: "1")
    end
  end
end
