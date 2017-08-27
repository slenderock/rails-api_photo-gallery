require 'rails_helper'

RSpec.describe 'Photos', type: :request do
  describe 'GET /photos' do
    it 'photo index' do
      get api_v1_photos_path
      expect(response).to have_http_status(200)
    end
    it 'photo show' do
      get api_v1_photo_path(create(:photo))
      expect(response).to have_http_status(200)
    end
  end
end
