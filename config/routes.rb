Rails.application.routes.draw do
  devise_for :users
  resources :portifolios
  resources :blogs do
    member do
        get :toggle_status
    end
  end


end
