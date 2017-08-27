Rails.application.routes.draw do
  scope :api do
    resources :photos, only: %i[index show], controller: 'api/v1/photos'
  end
end
