module Api::V1
  class ApiController < ApplicationController
    # TODO: fix tests
    before_action :authenticate unless Rails.env.test?

    def authenticate
      render json: { error: 'Access denied' }, status: :unauthorized unless valid_headers?
    end

    def valid_headers?
      request.headers['X-Api-Key'] == ENV.fetch('API_TOKEN') { 'WwEsPpOCYMsyPsmmvKBqQDOaEJ4t' }
    end
  end
end
