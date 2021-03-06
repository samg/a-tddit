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

RSpec.describe "/baz47s", type: :request do
  
  # Baz47. As you add validations to Baz47, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz47.create! valid_attributes
      get baz47s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz47 = Baz47.create! valid_attributes
      get baz47_url(baz47)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz47_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz47 = Baz47.create! valid_attributes
      get edit_baz47_url(baz47)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz47" do
        expect {
          post baz47s_url, params: { baz47: valid_attributes }
        }.to change(Baz47, :count).by(1)
      end

      it "redirects to the created baz47" do
        post baz47s_url, params: { baz47: valid_attributes }
        expect(response).to redirect_to(baz47_url(Baz47.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz47" do
        expect {
          post baz47s_url, params: { baz47: invalid_attributes }
        }.to change(Baz47, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz47s_url, params: { baz47: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz47" do
        baz47 = Baz47.create! valid_attributes
        patch baz47_url(baz47), params: { baz47: new_attributes }
        baz47.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz47" do
        baz47 = Baz47.create! valid_attributes
        patch baz47_url(baz47), params: { baz47: new_attributes }
        baz47.reload
        expect(response).to redirect_to(baz47_url(baz47))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz47 = Baz47.create! valid_attributes
        patch baz47_url(baz47), params: { baz47: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz47" do
      baz47 = Baz47.create! valid_attributes
      expect {
        delete baz47_url(baz47)
      }.to change(Baz47, :count).by(-1)
    end

    it "redirects to the baz47s list" do
      baz47 = Baz47.create! valid_attributes
      delete baz47_url(baz47)
      expect(response).to redirect_to(baz47s_url)
    end
  end
end
