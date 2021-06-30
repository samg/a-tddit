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

RSpec.describe "/baz29s", type: :request do
  
  # Baz29. As you add validations to Baz29, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz29.create! valid_attributes
      get baz29s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz29 = Baz29.create! valid_attributes
      get baz29_url(baz29)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz29_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz29 = Baz29.create! valid_attributes
      get edit_baz29_url(baz29)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz29" do
        expect {
          post baz29s_url, params: { baz29: valid_attributes }
        }.to change(Baz29, :count).by(1)
      end

      it "redirects to the created baz29" do
        post baz29s_url, params: { baz29: valid_attributes }
        expect(response).to redirect_to(baz29_url(Baz29.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz29" do
        expect {
          post baz29s_url, params: { baz29: invalid_attributes }
        }.to change(Baz29, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz29s_url, params: { baz29: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz29" do
        baz29 = Baz29.create! valid_attributes
        patch baz29_url(baz29), params: { baz29: new_attributes }
        baz29.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz29" do
        baz29 = Baz29.create! valid_attributes
        patch baz29_url(baz29), params: { baz29: new_attributes }
        baz29.reload
        expect(response).to redirect_to(baz29_url(baz29))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz29 = Baz29.create! valid_attributes
        patch baz29_url(baz29), params: { baz29: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz29" do
      baz29 = Baz29.create! valid_attributes
      expect {
        delete baz29_url(baz29)
      }.to change(Baz29, :count).by(-1)
    end

    it "redirects to the baz29s list" do
      baz29 = Baz29.create! valid_attributes
      delete baz29_url(baz29)
      expect(response).to redirect_to(baz29s_url)
    end
  end
end