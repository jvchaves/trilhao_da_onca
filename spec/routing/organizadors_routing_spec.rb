require "rails_helper"

RSpec.describe OrganizadorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/organizadors").to route_to("organizadors#index")
    end

    it "routes to #new" do
      expect(get: "/organizadors/new").to route_to("organizadors#new")
    end

    it "routes to #show" do
      expect(get: "/organizadors/1").to route_to("organizadors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/organizadors/1/edit").to route_to("organizadors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/organizadors").to route_to("organizadors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/organizadors/1").to route_to("organizadors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/organizadors/1").to route_to("organizadors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/organizadors/1").to route_to("organizadors#destroy", id: "1")
    end
  end
end
