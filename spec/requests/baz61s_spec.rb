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

RSpec.describe "/baz61s", type: :request do
  
  # Baz61. As you add validations to Baz61, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz61.create! valid_attributes
      get baz61s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz61 = Baz61.create! valid_attributes
      get baz61_url(baz61)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz61_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz61 = Baz61.create! valid_attributes
      get edit_baz61_url(baz61)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz61" do
        expect {
          post baz61s_url, params: { baz61: valid_attributes }
        }.to change(Baz61, :count).by(1)
      end

      it "redirects to the created baz61" do
        post baz61s_url, params: { baz61: valid_attributes }
        expect(response).to redirect_to(baz61_url(Baz61.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz61" do
        expect {
          post baz61s_url, params: { baz61: invalid_attributes }
        }.to change(Baz61, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz61s_url, params: { baz61: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz61" do
        baz61 = Baz61.create! valid_attributes
        patch baz61_url(baz61), params: { baz61: new_attributes }
        baz61.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz61" do
        baz61 = Baz61.create! valid_attributes
        patch baz61_url(baz61), params: { baz61: new_attributes }
        baz61.reload
        expect(response).to redirect_to(baz61_url(baz61))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz61 = Baz61.create! valid_attributes
        patch baz61_url(baz61), params: { baz61: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz61" do
      baz61 = Baz61.create! valid_attributes
      expect {
        delete baz61_url(baz61)
      }.to change(Baz61, :count).by(-1)
    end

    it "redirects to the baz61s list" do
      baz61 = Baz61.create! valid_attributes
      delete baz61_url(baz61)
      expect(response).to redirect_to(baz61s_url)
    end
  end
end
