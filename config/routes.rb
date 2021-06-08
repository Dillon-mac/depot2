Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  root to: 'store#index', as: 'store'
  resources :products do
    get :who_bought, on: :member
  end
end
