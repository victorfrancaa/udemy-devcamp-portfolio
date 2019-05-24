Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login' , sign_out: 'logout', sign_up: 'register' }
  resources :portifolios
  resources :blogs do
    member do
        get :toggle_status
    end
  end


end
