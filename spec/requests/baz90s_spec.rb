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

RSpec.describe "/baz90s", type: :request do
  
  # Baz90. As you add validations to Baz90, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz90.create! valid_attributes
      get baz90s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz90 = Baz90.create! valid_attributes
      get baz90_url(baz90)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz90_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz90 = Baz90.create! valid_attributes
      get edit_baz90_url(baz90)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz90" do
        expect {
          post baz90s_url, params: { baz90: valid_attributes }
        }.to change(Baz90, :count).by(1)
      end

      it "redirects to the created baz90" do
        post baz90s_url, params: { baz90: valid_attributes }
        expect(response).to redirect_to(baz90_url(Baz90.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz90" do
        expect {
          post baz90s_url, params: { baz90: invalid_attributes }
        }.to change(Baz90, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz90s_url, params: { baz90: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz90" do
        baz90 = Baz90.create! valid_attributes
        patch baz90_url(baz90), params: { baz90: new_attributes }
        baz90.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz90" do
        baz90 = Baz90.create! valid_attributes
        patch baz90_url(baz90), params: { baz90: new_attributes }
        baz90.reload
        expect(response).to redirect_to(baz90_url(baz90))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz90 = Baz90.create! valid_attributes
        patch baz90_url(baz90), params: { baz90: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz90" do
      baz90 = Baz90.create! valid_attributes
      expect {
        delete baz90_url(baz90)
      }.to change(Baz90, :count).by(-1)
    end

    it "redirects to the baz90s list" do
      baz90 = Baz90.create! valid_attributes
      delete baz90_url(baz90)
      expect(response).to redirect_to(baz90s_url)
    end
  end
end
