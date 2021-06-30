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

RSpec.describe "/bar39s", type: :request do
  
  # Bar39. As you add validations to Bar39, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Bar39.create! valid_attributes
      get bar39s_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      bar39 = Bar39.create! valid_attributes
      get bar39_url(bar39)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_bar39_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      bar39 = Bar39.create! valid_attributes
      get edit_bar39_url(bar39)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Bar39" do
        expect {
          post bar39s_url, params: { bar39: valid_attributes }
        }.to change(Bar39, :count).by(1)
      end

      it "redirects to the created bar39" do
        post bar39s_url, params: { bar39: valid_attributes }
        expect(response).to redirect_to(bar39_url(Bar39.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Bar39" do
        expect {
          post bar39s_url, params: { bar39: invalid_attributes }
        }.to change(Bar39, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post bar39s_url, params: { bar39: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested bar39" do
        bar39 = Bar39.create! valid_attributes
        patch bar39_url(bar39), params: { bar39: new_attributes }
        bar39.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the bar39" do
        bar39 = Bar39.create! valid_attributes
        patch bar39_url(bar39), params: { bar39: new_attributes }
        bar39.reload
        expect(response).to redirect_to(bar39_url(bar39))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        bar39 = Bar39.create! valid_attributes
        patch bar39_url(bar39), params: { bar39: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested bar39" do
      bar39 = Bar39.create! valid_attributes
      expect {
        delete bar39_url(bar39)
      }.to change(Bar39, :count).by(-1)
    end

    it "redirects to the bar39s list" do
      bar39 = Bar39.create! valid_attributes
      delete bar39_url(bar39)
      expect(response).to redirect_to(bar39s_url)
    end
  end
end
