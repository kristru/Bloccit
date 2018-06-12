require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do
  let(:advertisement) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_price ) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {id: advertisement.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      post :create, params: {advertisement: {title: " ", copy: " ", price: 0} }
      expect(response).to have_http_status(:redirect)
    end
  end

end
