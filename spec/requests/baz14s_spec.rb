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

RSpec.describe "/baz14s", type: :request do
  
  # Baz14. As you add validations to Baz14, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz14.create! valid_attributes
      get baz14s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz14 = Baz14.create! valid_attributes
      get baz14_url(baz14)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz14_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz14 = Baz14.create! valid_attributes
      get edit_baz14_url(baz14)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz14" do
        expect {
          post baz14s_url, params: { baz14: valid_attributes }
        }.to change(Baz14, :count).by(1)
      end

      it "redirects to the created baz14" do
        post baz14s_url, params: { baz14: valid_attributes }
        expect(response).to redirect_to(baz14_url(Baz14.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz14" do
        expect {
          post baz14s_url, params: { baz14: invalid_attributes }
        }.to change(Baz14, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz14s_url, params: { baz14: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz14" do
        baz14 = Baz14.create! valid_attributes
        patch baz14_url(baz14), params: { baz14: new_attributes }
        baz14.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz14" do
        baz14 = Baz14.create! valid_attributes
        patch baz14_url(baz14), params: { baz14: new_attributes }
        baz14.reload
        expect(response).to redirect_to(baz14_url(baz14))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz14 = Baz14.create! valid_attributes
        patch baz14_url(baz14), params: { baz14: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz14" do
      baz14 = Baz14.create! valid_attributes
      expect {
        delete baz14_url(baz14)
      }.to change(Baz14, :count).by(-1)
    end

    it "redirects to the baz14s list" do
      baz14 = Baz14.create! valid_attributes
      delete baz14_url(baz14)
      expect(response).to redirect_to(baz14s_url)
    end
  end
end
