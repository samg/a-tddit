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

RSpec.describe "/baz16s", type: :request do
  
  # Baz16. As you add validations to Baz16, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz16.create! valid_attributes
      get baz16s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz16 = Baz16.create! valid_attributes
      get baz16_url(baz16)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz16_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz16 = Baz16.create! valid_attributes
      get edit_baz16_url(baz16)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz16" do
        expect {
          post baz16s_url, params: { baz16: valid_attributes }
        }.to change(Baz16, :count).by(1)
      end

      it "redirects to the created baz16" do
        post baz16s_url, params: { baz16: valid_attributes }
        expect(response).to redirect_to(baz16_url(Baz16.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz16" do
        expect {
          post baz16s_url, params: { baz16: invalid_attributes }
        }.to change(Baz16, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz16s_url, params: { baz16: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz16" do
        baz16 = Baz16.create! valid_attributes
        patch baz16_url(baz16), params: { baz16: new_attributes }
        baz16.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz16" do
        baz16 = Baz16.create! valid_attributes
        patch baz16_url(baz16), params: { baz16: new_attributes }
        baz16.reload
        expect(response).to redirect_to(baz16_url(baz16))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz16 = Baz16.create! valid_attributes
        patch baz16_url(baz16), params: { baz16: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz16" do
      baz16 = Baz16.create! valid_attributes
      expect {
        delete baz16_url(baz16)
      }.to change(Baz16, :count).by(-1)
    end

    it "redirects to the baz16s list" do
      baz16 = Baz16.create! valid_attributes
      delete baz16_url(baz16)
      expect(response).to redirect_to(baz16s_url)
    end
  end
end