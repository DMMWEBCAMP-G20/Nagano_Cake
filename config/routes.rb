Rails.application.routes.draw do
  get 'delivelies/new'
  get 'delivelies/create'
  get 'delivelies/index'
  get 'delivelies/edit'
  get 'delivelies/update'
  get 'delivelies/destroy'
  get 'orders/new'
  get 'orders/create'
  get 'orders/confilm'
  get 'orders/thanks'
  get 'orders/index'
  get 'orders/show'
  get 'carts_items/new'
  get 'carts_items/create'
  get 'carts_items/show'
  get 'carts_items/edit'
  get 'carts_items/update'
  get 'carts_items/destroy'
  get 'carts_items/empty'
  get 'genres/new'
  get 'genres/create'
  get 'genres/index'
  get 'genres/edit'
  get 'genres/update'
  get 'products/index'
  get 'products/show'
  get 'homes/top'
  get 'homes/about'
  namespace :admin do
    get 'orders/index'
    get 'orders/show'
    get 'orders/edit'
    get 'orders/update'
  end
  namespace :admin do
    get 'order_products/show'
    get 'order_products/edit'
    get 'order_products/update'
  end
  namespace :admin do
    get 'products/new'
    get 'products/index'
    get 'products/show'
    get 'products/edit'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
