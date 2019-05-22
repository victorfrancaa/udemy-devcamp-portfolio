Rails.application.routes.draw do
  resources :portifolios

  get 'portifolio-items', to: 'portifolios#angular'

  resources :blogs do
    member do
        get :toggle_status
    end
  end
end
