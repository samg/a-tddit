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

RSpec.describe "/baz92s", type: :request do
  
  # Baz92. As you add validations to Baz92, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz92.create! valid_attributes
      get baz92s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz92 = Baz92.create! valid_attributes
      get baz92_url(baz92)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz92_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz92 = Baz92.create! valid_attributes
      get edit_baz92_url(baz92)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz92" do
        expect {
          post baz92s_url, params: { baz92: valid_attributes }
        }.to change(Baz92, :count).by(1)
      end

      it "redirects to the created baz92" do
        post baz92s_url, params: { baz92: valid_attributes }
        expect(response).to redirect_to(baz92_url(Baz92.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz92" do
        expect {
          post baz92s_url, params: { baz92: invalid_attributes }
        }.to change(Baz92, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz92s_url, params: { baz92: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz92" do
        baz92 = Baz92.create! valid_attributes
        patch baz92_url(baz92), params: { baz92: new_attributes }
        baz92.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz92" do
        baz92 = Baz92.create! valid_attributes
        patch baz92_url(baz92), params: { baz92: new_attributes }
        baz92.reload
        expect(response).to redirect_to(baz92_url(baz92))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz92 = Baz92.create! valid_attributes
        patch baz92_url(baz92), params: { baz92: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz92" do
      baz92 = Baz92.create! valid_attributes
      expect {
        delete baz92_url(baz92)
      }.to change(Baz92, :count).by(-1)
    end

    it "redirects to the baz92s list" do
      baz92 = Baz92.create! valid_attributes
      delete baz92_url(baz92)
      expect(response).to redirect_to(baz92s_url)
    end
  end
end
