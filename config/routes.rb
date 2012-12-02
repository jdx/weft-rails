Weft::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  resources :users

  resource :device
  match 'preview' => 'home#preview'
  root to: 'home#index'
end
