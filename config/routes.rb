Rails.application.routes.draw do
  get 'achievements', to: 'achievements#index'
  post 'achievements', to: 'achievements#create'
  delete 'achievements/destroy', to: 'achievements#destroy'
  put 'achievements/update', to: 'achievements#update'
  get 'categories', to: 'categories#index'
  post 'categories', to: 'categories#create'
  delete 'categories/destroy', to: 'categories#destroy'
  put 'categories/update', to: 'categories#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :comments
  resources :posts
  resources :users

  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/users/:id/settings', to: 'users#edit'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root 'static_pages#home'

end
