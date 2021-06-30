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

RSpec.describe "/bar22s", type: :request do
  
  # Bar22. As you add validations to Bar22, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Bar22.create! valid_attributes
      get bar22s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bar22 = Bar22.create! valid_attributes
      get bar22_url(bar22)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bar22_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      bar22 = Bar22.create! valid_attributes
      get edit_bar22_url(bar22)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Bar22" do
        expect {
          post bar22s_url, params: { bar22: valid_attributes }
        }.to change(Bar22, :count).by(1)
      end

      it "redirects to the created bar22" do
        post bar22s_url, params: { bar22: valid_attributes }
        expect(response).to redirect_to(bar22_url(Bar22.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Bar22" do
        expect {
          post bar22s_url, params: { bar22: invalid_attributes }
        }.to change(Bar22, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bar22s_url, params: { bar22: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bar22" do
        bar22 = Bar22.create! valid_attributes
        patch bar22_url(bar22), params: { bar22: new_attributes }
        bar22.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bar22" do
        bar22 = Bar22.create! valid_attributes
        patch bar22_url(bar22), params: { bar22: new_attributes }
        bar22.reload
        expect(response).to redirect_to(bar22_url(bar22))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bar22 = Bar22.create! valid_attributes
        patch bar22_url(bar22), params: { bar22: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bar22" do
      bar22 = Bar22.create! valid_attributes
      expect {
        delete bar22_url(bar22)
      }.to change(Bar22, :count).by(-1)
    end

    it "redirects to the bar22s list" do
      bar22 = Bar22.create! valid_attributes
      delete bar22_url(bar22)
      expect(response).to redirect_to(bar22s_url)
    end
  end
end