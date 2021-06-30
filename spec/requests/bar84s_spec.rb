 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/bar84s", type: :request do
  
  # Bar84. As you add validations to Bar84, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Bar84.create! valid_attributes
      get bar84s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bar84 = Bar84.create! valid_attributes
      get bar84_url(bar84)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bar84_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      bar84 = Bar84.create! valid_attributes
      get edit_bar84_url(bar84)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Bar84" do
        expect {
          post bar84s_url, params: { bar84: valid_attributes }
        }.to change(Bar84, :count).by(1)
      end

      it "redirects to the created bar84" do
        post bar84s_url, params: { bar84: valid_attributes }
        expect(response).to redirect_to(bar84_url(Bar84.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Bar84" do
        expect {
          post bar84s_url, params: { bar84: invalid_attributes }
        }.to change(Bar84, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bar84s_url, params: { bar84: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bar84" do
        bar84 = Bar84.create! valid_attributes
        patch bar84_url(bar84), params: { bar84: new_attributes }
        bar84.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bar84" do
        bar84 = Bar84.create! valid_attributes
        patch bar84_url(bar84), params: { bar84: new_attributes }
        bar84.reload
        expect(response).to redirect_to(bar84_url(bar84))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bar84 = Bar84.create! valid_attributes
        patch bar84_url(bar84), params: { bar84: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bar84" do
      bar84 = Bar84.create! valid_attributes
      expect {
        delete bar84_url(bar84)
      }.to change(Bar84, :count).by(-1)
    end

    it "redirects to the bar84s list" do
      bar84 = Bar84.create! valid_attributes
      delete bar84_url(bar84)
      expect(response).to redirect_to(bar84s_url)
    end
  end
end
