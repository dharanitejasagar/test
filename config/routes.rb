Rails.application.routes.draw do
  

  
  devise_for :users
  root :to=> "books#new"
  resources :books do
  	resources :comments
  end
  resources :pics do 
  	resources :comments
  end
   root :to=> "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
