Rails.application.routes.draw do
  root 'static_pages#home'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1, path: '' do
      resources :photos, only: %i[index show]
    end
  end
end
