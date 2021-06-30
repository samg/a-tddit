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

RSpec.describe "/bar87s", type: :request do
  
  # Bar87. As you add validations to Bar87, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Bar87.create! valid_attributes
      get bar87s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bar87 = Bar87.create! valid_attributes
      get bar87_url(bar87)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bar87_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      bar87 = Bar87.create! valid_attributes
      get edit_bar87_url(bar87)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Bar87" do
        expect {
          post bar87s_url, params: { bar87: valid_attributes }
        }.to change(Bar87, :count).by(1)
      end

      it "redirects to the created bar87" do
        post bar87s_url, params: { bar87: valid_attributes }
        expect(response).to redirect_to(bar87_url(Bar87.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Bar87" do
        expect {
          post bar87s_url, params: { bar87: invalid_attributes }
        }.to change(Bar87, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bar87s_url, params: { bar87: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bar87" do
        bar87 = Bar87.create! valid_attributes
        patch bar87_url(bar87), params: { bar87: new_attributes }
        bar87.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bar87" do
        bar87 = Bar87.create! valid_attributes
        patch bar87_url(bar87), params: { bar87: new_attributes }
        bar87.reload
        expect(response).to redirect_to(bar87_url(bar87))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bar87 = Bar87.create! valid_attributes
        patch bar87_url(bar87), params: { bar87: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bar87" do
      bar87 = Bar87.create! valid_attributes
      expect {
        delete bar87_url(bar87)
      }.to change(Bar87, :count).by(-1)
    end

    it "redirects to the bar87s list" do
      bar87 = Bar87.create! valid_attributes
      delete bar87_url(bar87)
      expect(response).to redirect_to(bar87s_url)
    end
  end
end
