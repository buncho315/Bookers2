Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users
  get "about" => "top#about" , as: "about" #自分で追加
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end
