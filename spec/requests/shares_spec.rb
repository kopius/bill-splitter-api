require 'rails_helper'

RSpec.describe 'Shares API' do
  def share_params
    {
      bill_id: 1,
      person_name: 'Nim',
      base_cost: 25.00
    }
  end

  def shares
    Share.all
  end

  def share
    Share.first
  end

  before(:all) do
    # create a bill and get its id?
    Share.create!(share_params)
  end

  after(:all) do
    # delete the bill that was created?
    Share.delete_all
  end

  describe 'GET /shares' do
    it 'lists all shares' do
      get '/shares'

      expect(response).to be_success

      shares_response = JSON.parse(response.body)
      expect(shares_response.length).to eq(shares.count)
      expect(shares_response.first['person_name']).to eq(share[:person_name])
    end
  end

  describe 'GET /shares/:id' do
    it 'shows one share' do
      get "/shares/#{share.id}"

      expect(response).to be_success

      share_response = JSON.parse(response.body)
      expect(share_response['id']).not_to be_nil
      expect(share_response['person_name']).to eq(share[:person_name])
    end
  end

  describe 'POST /shares' do
    it 'creates an share' do
      post '/shares', share: share_params, format: :json

      expect(response).to be_success

      share_response = JSON.parse(response.body)
      expect(share_response['id']).not_to be_nil
      expect(share_response['person_name']).to eq(share_params[:person_name])
    end
  end

  describe 'PATCH /shares/:id' do
    def share_diff
      { name: 'Zoe' }
    end

    it 'updates an share' do
      patch "/shares/#{share.id}", share: share_diff, format: :json

      expect(response).to be_success

      share_response = JSON.parse(response.body)
      expect(share_response['id']).to eq(share[:id])
      expect(share_response['person_name']).to eq(share_diff[:person_name])
    end
  end

  describe 'DELETE /shares/:id' do
    it 'deletes an share' do
      delete "/shares/#{share.id}"

      expect(response).to be_success
      expect(response.body).to be_empty
    end
  end
end
