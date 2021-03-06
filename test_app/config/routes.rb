Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  
  root to: 'pages#home'
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  
  get 'login', to: 'sessions#new'
  # post to log in which is create, goes to sessions controller, create action 
  # this will load the log in form
  post 'login', to: 'sessions#create'
  # delete to log out will go to sessions controller, destroy action
  delete 'logout', to: 'sessions#destroy'
  
  resources :categories, except: [:destroy]
  
end
