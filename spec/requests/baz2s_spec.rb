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

RSpec.describe "/baz2s", type: :request do
  
  # Baz2. As you add validations to Baz2, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz2.create! valid_attributes
      get baz2s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz2 = Baz2.create! valid_attributes
      get baz2_url(baz2)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz2_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz2 = Baz2.create! valid_attributes
      get edit_baz2_url(baz2)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz2" do
        expect {
          post baz2s_url, params: { baz2: valid_attributes }
        }.to change(Baz2, :count).by(1)
      end

      it "redirects to the created baz2" do
        post baz2s_url, params: { baz2: valid_attributes }
        expect(response).to redirect_to(baz2_url(Baz2.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz2" do
        expect {
          post baz2s_url, params: { baz2: invalid_attributes }
        }.to change(Baz2, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz2s_url, params: { baz2: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz2" do
        baz2 = Baz2.create! valid_attributes
        patch baz2_url(baz2), params: { baz2: new_attributes }
        baz2.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz2" do
        baz2 = Baz2.create! valid_attributes
        patch baz2_url(baz2), params: { baz2: new_attributes }
        baz2.reload
        expect(response).to redirect_to(baz2_url(baz2))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz2 = Baz2.create! valid_attributes
        patch baz2_url(baz2), params: { baz2: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz2" do
      baz2 = Baz2.create! valid_attributes
      expect {
        delete baz2_url(baz2)
      }.to change(Baz2, :count).by(-1)
    end

    it "redirects to the baz2s list" do
      baz2 = Baz2.create! valid_attributes
      delete baz2_url(baz2)
      expect(response).to redirect_to(baz2s_url)
    end
  end
end
