Rails.application.routes.draw do
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
