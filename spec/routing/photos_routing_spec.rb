require 'rails_helper'

RSpec.describe Api::V1::PhotosController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/api/photos').to route_to('api/v1/photos#index')
    end

    it 'routes to #show' do
      expect(get: '/api/photos/1').to route_to('api/v1/photos#show', id: '1')
    end
  end
end
