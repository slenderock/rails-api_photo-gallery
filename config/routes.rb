Rails.application.routes.draw do
  root 'static_pages#home'

  scope :api do
    resources :photos, only: %i[index show], controller: 'api/v1/photos'
  end
end
