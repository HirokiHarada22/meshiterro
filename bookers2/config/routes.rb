Rails.application.routes.draw do

root 'home#top'
get "home/about" => "home#about" 

devise_for :users
resources :home
resources :books, only: [:index, :show, :new, :edit, :update, :create, :destroy]
resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
