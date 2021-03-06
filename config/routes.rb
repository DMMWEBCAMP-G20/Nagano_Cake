Rails.application.routes.draw do
  root 'homes#top'
  get 'about' => 'homes#about'
  get 'confirmation' =>'members#confirmation'
  patch 'withdraw'  => 'members#withdraw'
  get 'empty' => 'cart_items#empty'
  post 'confirm' => 'orders#confirm'
  get 'thanks' => 'orders#thanks'

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
  }
  devise_for :members, controllers: {
    sessions:      'members/sessions',
    passwords:     'members/passwords',
    registrations: 'members/registrations'
  }

  resources :members, only: [:show, :edit, :update]
  resources :products, only: [:index, :show]
  resources :genres, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :cart_items, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :orders, only: [:new, :create, :index, :show]
  resources :order_products, only: [:index, :show]
  resources :deliveries, only: [:new, :create, :index, :edit, :update, :destroy]

  namespace :admin do
    resources :members, only: [:index, :show, :edit, :update]
    resources :products, only: [:new, :create, :index, :show, :edit, :update]
    resources :orders, only: [:index, :show, :edit, :update]
    resources :order_products, only: [:index, :show, :edit, :update]
    get 'top' => 'orders#top'
    get "search" => "products#search"
  end
end
