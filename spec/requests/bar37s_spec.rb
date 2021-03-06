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

RSpec.describe "/bar37s", type: :request do
  
  # Bar37. As you add validations to Bar37, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Bar37.create! valid_attributes
      get bar37s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bar37 = Bar37.create! valid_attributes
      get bar37_url(bar37)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bar37_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      bar37 = Bar37.create! valid_attributes
      get edit_bar37_url(bar37)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Bar37" do
        expect {
          post bar37s_url, params: { bar37: valid_attributes }
        }.to change(Bar37, :count).by(1)
      end

      it "redirects to the created bar37" do
        post bar37s_url, params: { bar37: valid_attributes }
        expect(response).to redirect_to(bar37_url(Bar37.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Bar37" do
        expect {
          post bar37s_url, params: { bar37: invalid_attributes }
        }.to change(Bar37, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bar37s_url, params: { bar37: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bar37" do
        bar37 = Bar37.create! valid_attributes
        patch bar37_url(bar37), params: { bar37: new_attributes }
        bar37.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bar37" do
        bar37 = Bar37.create! valid_attributes
        patch bar37_url(bar37), params: { bar37: new_attributes }
        bar37.reload
        expect(response).to redirect_to(bar37_url(bar37))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bar37 = Bar37.create! valid_attributes
        patch bar37_url(bar37), params: { bar37: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bar37" do
      bar37 = Bar37.create! valid_attributes
      expect {
        delete bar37_url(bar37)
      }.to change(Bar37, :count).by(-1)
    end

    it "redirects to the bar37s list" do
      bar37 = Bar37.create! valid_attributes
      delete bar37_url(bar37)
      expect(response).to redirect_to(bar37s_url)
    end
  end
end
