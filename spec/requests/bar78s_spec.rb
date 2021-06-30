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

RSpec.describe "/bar78s", type: :request do
  
  # Bar78. As you add validations to Bar78, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Bar78.create! valid_attributes
      get bar78s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bar78 = Bar78.create! valid_attributes
      get bar78_url(bar78)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bar78_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      bar78 = Bar78.create! valid_attributes
      get edit_bar78_url(bar78)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Bar78" do
        expect {
          post bar78s_url, params: { bar78: valid_attributes }
        }.to change(Bar78, :count).by(1)
      end

      it "redirects to the created bar78" do
        post bar78s_url, params: { bar78: valid_attributes }
        expect(response).to redirect_to(bar78_url(Bar78.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Bar78" do
        expect {
          post bar78s_url, params: { bar78: invalid_attributes }
        }.to change(Bar78, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bar78s_url, params: { bar78: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bar78" do
        bar78 = Bar78.create! valid_attributes
        patch bar78_url(bar78), params: { bar78: new_attributes }
        bar78.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bar78" do
        bar78 = Bar78.create! valid_attributes
        patch bar78_url(bar78), params: { bar78: new_attributes }
        bar78.reload
        expect(response).to redirect_to(bar78_url(bar78))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bar78 = Bar78.create! valid_attributes
        patch bar78_url(bar78), params: { bar78: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bar78" do
      bar78 = Bar78.create! valid_attributes
      expect {
        delete bar78_url(bar78)
      }.to change(Bar78, :count).by(-1)
    end

    it "redirects to the bar78s list" do
      bar78 = Bar78.create! valid_attributes
      delete bar78_url(bar78)
      expect(response).to redirect_to(bar78s_url)
    end
  end
end