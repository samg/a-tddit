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

RSpec.describe "/bar61s", type: :request do
  
  # Bar61. As you add validations to Bar61, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Bar61.create! valid_attributes
      get bar61s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bar61 = Bar61.create! valid_attributes
      get bar61_url(bar61)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bar61_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      bar61 = Bar61.create! valid_attributes
      get edit_bar61_url(bar61)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Bar61" do
        expect {
          post bar61s_url, params: { bar61: valid_attributes }
        }.to change(Bar61, :count).by(1)
      end

      it "redirects to the created bar61" do
        post bar61s_url, params: { bar61: valid_attributes }
        expect(response).to redirect_to(bar61_url(Bar61.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Bar61" do
        expect {
          post bar61s_url, params: { bar61: invalid_attributes }
        }.to change(Bar61, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bar61s_url, params: { bar61: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bar61" do
        bar61 = Bar61.create! valid_attributes
        patch bar61_url(bar61), params: { bar61: new_attributes }
        bar61.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bar61" do
        bar61 = Bar61.create! valid_attributes
        patch bar61_url(bar61), params: { bar61: new_attributes }
        bar61.reload
        expect(response).to redirect_to(bar61_url(bar61))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bar61 = Bar61.create! valid_attributes
        patch bar61_url(bar61), params: { bar61: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bar61" do
      bar61 = Bar61.create! valid_attributes
      expect {
        delete bar61_url(bar61)
      }.to change(Bar61, :count).by(-1)
    end

    it "redirects to the bar61s list" do
      bar61 = Bar61.create! valid_attributes
      delete bar61_url(bar61)
      expect(response).to redirect_to(bar61s_url)
    end
  end
end
