require "rails_helper"

RSpec.describe Bar56sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar56s").to route_to("bar56s#index")
    end

    it "routes to #new" do
      expect(get: "/bar56s/new").to route_to("bar56s#new")
    end

    it "routes to #show" do
      expect(get: "/bar56s/1").to route_to("bar56s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar56s/1/edit").to route_to("bar56s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar56s").to route_to("bar56s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar56s/1").to route_to("bar56s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar56s/1").to route_to("bar56s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar56s/1").to route_to("bar56s#destroy", id: "1")
    end
  end
end
