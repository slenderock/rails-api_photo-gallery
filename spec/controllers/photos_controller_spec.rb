require 'rails_helper'

RSpec.describe Api::V1::PhotosController, type: :controller do
  let(:photo) { create(:photo) }
  let(:invalid_attributes) {}
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      get :show, params: { id: photo.to_param }, session: valid_session
      expect(response).to be_success
    end
  end
end
