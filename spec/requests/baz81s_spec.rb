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

RSpec.describe "/baz81s", type: :request do
  
  # Baz81. As you add validations to Baz81, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Baz81.create! valid_attributes
      get baz81s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      baz81 = Baz81.create! valid_attributes
      get baz81_url(baz81)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_baz81_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      baz81 = Baz81.create! valid_attributes
      get edit_baz81_url(baz81)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Baz81" do
        expect {
          post baz81s_url, params: { baz81: valid_attributes }
        }.to change(Baz81, :count).by(1)
      end

      it "redirects to the created baz81" do
        post baz81s_url, params: { baz81: valid_attributes }
        expect(response).to redirect_to(baz81_url(Baz81.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Baz81" do
        expect {
          post baz81s_url, params: { baz81: invalid_attributes }
        }.to change(Baz81, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post baz81s_url, params: { baz81: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested baz81" do
        baz81 = Baz81.create! valid_attributes
        patch baz81_url(baz81), params: { baz81: new_attributes }
        baz81.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the baz81" do
        baz81 = Baz81.create! valid_attributes
        patch baz81_url(baz81), params: { baz81: new_attributes }
        baz81.reload
        expect(response).to redirect_to(baz81_url(baz81))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        baz81 = Baz81.create! valid_attributes
        patch baz81_url(baz81), params: { baz81: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested baz81" do
      baz81 = Baz81.create! valid_attributes
      expect {
        delete baz81_url(baz81)
      }.to change(Baz81, :count).by(-1)
    end

    it "redirects to the baz81s list" do
      baz81 = Baz81.create! valid_attributes
      delete baz81_url(baz81)
      expect(response).to redirect_to(baz81s_url)
    end
  end
end
