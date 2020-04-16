Rails.application.routes.draw do
  devise_for :admins
  devise_for :members

  root 'homes#top'
  get 'about' => 'homes#about'
  get 'empty' => 'cart_items#empty'
  get 'confirm' => 'orders#confirm'
  get 'thanks' => 'orders#thanks'

  resources :products, only: [:index, :show]
  resources :genres, only: [:new, :create, :index, :edit, :update, :destroy]
  resources :cart_items, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :orders, only: [:new, :create, :index, :show]
  resources :order_products, only: [:show]
  resources :deliveries, only: [:new, :create, :index, :edit, :update, :destroy]

  namespace :admin do
    resources :members, only: [:index, :show, :edit, :update]
  end

  namespace :admin do
    resources :products, only: [:new, :create, :index, :show, :edit, :update]
  end

  namespace :admin do
    resources :orders, only: [:index, :show, :edit, :update]
    get 'top' => 'orders#top'
  end

  namespace :admin do
    resources :order_products, only: [:show, :edit, :update]
  end
end
