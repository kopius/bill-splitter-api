require 'rails_helper'

RSpec.describe SharesController do
  def share_params
    {
      bill_id: 1,
      person_name: 'Nim',
      base_cost: 25.00
    }
  end

  def share
    Share.first
  end

  before(:all) do
    Share.create!(share_params)
  end

  after(:all) do
    Share.delete_all
  end

  describe 'GET index' do
    before(:each) { get :index }
    it 'is successful' do
      expect(response.status).to eq(200)
    end

    it 'renders a JSON response' do
      shares_collection = JSON.parse(response.body)
      expect(shares_collection).not_to be_nil
      expect(shares_collection.first['title']).to eq(share.title)
    end
  end

  describe 'GET show' do
    before(:each) { get :show, id: share.id }
    it 'is successful' do
      expect(response.status).to eq(200)
    end

    it 'renders a JSON response' do
      share_response = JSON.parse(response.body)
      expect(share_response).not_to be_nil
      expect(share_response['title']).to eq(share.title)
    end

    # this is how we test for whether we got a single item back
    # if it's an array of items, not a hash, it will fail this test
    it 'renders a hash' do
      share_response = JSON.parse(response.body)
      expect(share_response).to a_kind_of(Hash)
    end
  end

  describe 'POST create' do
    before(:each) do
      post :create, share: share_params, format: :json
    end

    it 'is successful' do
      expect(response.status).to eq(201)
    end

    it 'renders a JSON response' do
      share_response = JSON.parse(response.body)
      expect(share_response).not_to be_nil
    end
  end

  describe 'PATCH update' do
    # again, it may be better practice to define share_diff above
    def share_diff
      { name: 'Zoe' }
    end

    before(:each) do
      patch :update, id: share.id, share: share_diff, format: :json
    end

    it 'is successful' do
      expect(response.status).to eq(200)
    end

    it 'renders a JSON response' do
      share_response = JSON.parse(response.body)
      expect(share_response).not_to be_nil
    end
  end

  describe 'DELETE destroy' do
    it 'is successful and returns an empty response' do
      delete :destroy, id: share.id

      expect(response.status).to eq(204)
      expect(response.body).to be_empty
    end
  end
end
