require 'rails_helper'

RSpec.describe 'Favorite API', type: :request do
  # Test suite for GET /houses
  describe 'GET /favorites' do
    before(:each) do
      create_favorite
      sign_in
      get '/favorites'
    end

    it 'returns the favorite houses' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for POST /houses
  describe 'POST /houses' do
    # valid payload
    let(:valid_attributes) do
      { house_id: 300 }
    end

    context 'when the request is valid' do
      before(:each) do
        create_house
        sign_in
        post '/favorites', params: valid_attributes
      end

      it 'creates the object with the favorite' do
        expect(json).not_to be_empty
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before(:each) do
        create_house
        sign_in
        post '/favorites', params: { house_id: 100 }
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /favorites/:id' do
    before(:each) do
      create_favorite
      sign_in
      delete '/favorites/1'
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
