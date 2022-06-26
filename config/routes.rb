Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users
  get "/home/about" => 'homes#about' , as: 'about'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  patch 'users/:id' => 'users#update', as: 'update_user'
  #自分で追加
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books, only: [:new, :create, :index, :show, :edit, :update]
  resources :users, only: [:show, :edit, :index]

end
