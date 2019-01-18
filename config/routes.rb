Rails.application.routes.draw do
  resources :comments
  resources :ideas
  resources :categories
  resources :users
  post '/auth', to: 'auth#create'
  get '/tokenauth', to: 'auth#check'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
