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

RSpec.describe "/baz83s", type: :request do
  
  # Baz83. As you add validations to Baz83, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz83.create! valid_attributes
      get baz83s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz83 = Baz83.create! valid_attributes
      get baz83_url(baz83)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz83_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz83 = Baz83.create! valid_attributes
      get edit_baz83_url(baz83)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz83" do
        expect {
          post baz83s_url, params: { baz83: valid_attributes }
        }.to change(Baz83, :count).by(1)
      end

      it "redirects to the created baz83" do
        post baz83s_url, params: { baz83: valid_attributes }
        expect(response).to redirect_to(baz83_url(Baz83.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz83" do
        expect {
          post baz83s_url, params: { baz83: invalid_attributes }
        }.to change(Baz83, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz83s_url, params: { baz83: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz83" do
        baz83 = Baz83.create! valid_attributes
        patch baz83_url(baz83), params: { baz83: new_attributes }
        baz83.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz83" do
        baz83 = Baz83.create! valid_attributes
        patch baz83_url(baz83), params: { baz83: new_attributes }
        baz83.reload
        expect(response).to redirect_to(baz83_url(baz83))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz83 = Baz83.create! valid_attributes
        patch baz83_url(baz83), params: { baz83: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz83" do
      baz83 = Baz83.create! valid_attributes
      expect {
        delete baz83_url(baz83)
      }.to change(Baz83, :count).by(-1)
    end

    it "redirects to the baz83s list" do
      baz83 = Baz83.create! valid_attributes
      delete baz83_url(baz83)
      expect(response).to redirect_to(baz83s_url)
    end
  end
end