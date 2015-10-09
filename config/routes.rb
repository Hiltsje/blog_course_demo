Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :projects
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'
##Redirect to homepage when there is a routing error..
  get '*path' => redirect('/')
end
