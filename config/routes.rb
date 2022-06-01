Rails.application.routes.draw do
  resources :historics, only: %i[index]

  get "certificates/find", to: "certificates#find", as: :find_certificate
  delete 'historics/:id', to: "historics#destroy", as: :historic

  root to: 'certificates#index'

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :historics, only: %i[index]
    end
  end
end
