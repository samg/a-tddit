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

RSpec.describe "/baz37s", type: :request do
  
  # Baz37. As you add validations to Baz37, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz37.create! valid_attributes
      get baz37s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz37 = Baz37.create! valid_attributes
      get baz37_url(baz37)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz37_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz37 = Baz37.create! valid_attributes
      get edit_baz37_url(baz37)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz37" do
        expect {
          post baz37s_url, params: { baz37: valid_attributes }
        }.to change(Baz37, :count).by(1)
      end

      it "redirects to the created baz37" do
        post baz37s_url, params: { baz37: valid_attributes }
        expect(response).to redirect_to(baz37_url(Baz37.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz37" do
        expect {
          post baz37s_url, params: { baz37: invalid_attributes }
        }.to change(Baz37, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz37s_url, params: { baz37: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz37" do
        baz37 = Baz37.create! valid_attributes
        patch baz37_url(baz37), params: { baz37: new_attributes }
        baz37.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz37" do
        baz37 = Baz37.create! valid_attributes
        patch baz37_url(baz37), params: { baz37: new_attributes }
        baz37.reload
        expect(response).to redirect_to(baz37_url(baz37))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz37 = Baz37.create! valid_attributes
        patch baz37_url(baz37), params: { baz37: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz37" do
      baz37 = Baz37.create! valid_attributes
      expect {
        delete baz37_url(baz37)
      }.to change(Baz37, :count).by(-1)
    end

    it "redirects to the baz37s list" do
      baz37 = Baz37.create! valid_attributes
      delete baz37_url(baz37)
      expect(response).to redirect_to(baz37s_url)
    end
  end
end
