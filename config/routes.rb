Weft::Application.routes.draw do
  get "home/index"

  get "home/preview"

  resource :device
  match 'preview' => 'home#preview'
  root to: 'home#index'
end
