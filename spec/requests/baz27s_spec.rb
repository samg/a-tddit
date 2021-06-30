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

RSpec.describe "/baz27s", type: :request do
  
  # Baz27. As you add validations to Baz27, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz27.create! valid_attributes
      get baz27s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz27 = Baz27.create! valid_attributes
      get baz27_url(baz27)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz27_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz27 = Baz27.create! valid_attributes
      get edit_baz27_url(baz27)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz27" do
        expect {
          post baz27s_url, params: { baz27: valid_attributes }
        }.to change(Baz27, :count).by(1)
      end

      it "redirects to the created baz27" do
        post baz27s_url, params: { baz27: valid_attributes }
        expect(response).to redirect_to(baz27_url(Baz27.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz27" do
        expect {
          post baz27s_url, params: { baz27: invalid_attributes }
        }.to change(Baz27, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz27s_url, params: { baz27: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz27" do
        baz27 = Baz27.create! valid_attributes
        patch baz27_url(baz27), params: { baz27: new_attributes }
        baz27.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz27" do
        baz27 = Baz27.create! valid_attributes
        patch baz27_url(baz27), params: { baz27: new_attributes }
        baz27.reload
        expect(response).to redirect_to(baz27_url(baz27))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz27 = Baz27.create! valid_attributes
        patch baz27_url(baz27), params: { baz27: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz27" do
      baz27 = Baz27.create! valid_attributes
      expect {
        delete baz27_url(baz27)
      }.to change(Baz27, :count).by(-1)
    end

    it "redirects to the baz27s list" do
      baz27 = Baz27.create! valid_attributes
      delete baz27_url(baz27)
      expect(response).to redirect_to(baz27s_url)
    end
  end
end
