Rails.application.routes.draw do
  devise_for :admins
  devise_for :members
  root 'homes#top'
  get 'about' => 'homes#about'

  namespace :admin do
    resources :products, only: [:new, :create, :index, :show, :edit, :update]
  end

  namespace :admin do
    resources :orders, only: [:index, :show, :edit, :update]
  end

  namespace :admin do
    resources :order_products, only: [:show, :edit, :update]
  end

  resources :products, only: [:index, :show]
  resources :genres, only: [:new, :create, :index, :edit, :update]
  resources :cart_items, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :orders, only: [:new, :create, :index, :show]
  resources :order_products, only: [:show]
  resources :deliveries, only: [:new, :create, :index, :edit, :update, :destroy]

  get 'cart_items/empty' => 'cart_items#empty'
  get 'orders/comfirm' => 'orders#confirm'
  get 'orders/thanks' => 'orders#thanks'
end
