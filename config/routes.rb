Rails.application.routes.draw do

  root 'homes#top'
  get 'home/about' => 'homes#about'

  devise_for :users

  resources :users, only: [:show, :index, :edit, :update] do
    resource :follow, only: [:create, :destroy]
  end
  resources :books do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

end