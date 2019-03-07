Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :new, :create, :destroy]
  resources :products
  resources :orders
  resources :line_items

  resources :carts do 
  	resources :line_items, only: [:index, :show] 
  end



  scope :admin do 
  	resources :products, only: [:new, :create]
  end
end
