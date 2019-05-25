Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  devise_for :users, path_names: { sign_in: 'login' , sign_out: 'logout', sign_up: 'register' }

  resources :portifolios

  resources :blogs do
    member do
        get :toggle_status
    end
  end

  root to: 'pages#home'

end
