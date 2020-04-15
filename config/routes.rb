Rails.application.routes.draw do
  root 'homes#top'
  get 'about' => 'homes#about'

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :members, controllers: {
    sessions:      'members/sessions',
    passwords:     'members/passwords',
    registrations: 'members/registrations'
  }

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
