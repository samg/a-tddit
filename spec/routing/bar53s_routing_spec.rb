require "rails_helper"

RSpec.describe Bar53sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bar53s").to route_to("bar53s#index")
    end

    it "routes to #new" do
      expect(get: "/bar53s/new").to route_to("bar53s#new")
    end

    it "routes to #show" do
      expect(get: "/bar53s/1").to route_to("bar53s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bar53s/1/edit").to route_to("bar53s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bar53s").to route_to("bar53s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bar53s/1").to route_to("bar53s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bar53s/1").to route_to("bar53s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bar53s/1").to route_to("bar53s#destroy", id: "1")
    end
  end
end
