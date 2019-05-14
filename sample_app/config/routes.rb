Rails.application.routes.draw do
  
  
  root 'static_pages#application'
  
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get  '/login', to:'sessions#new'
  post  '/login', to:'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get  '/newMeeting',    to: 'meetings#new'
  post '/newMeeting', to:'meetings#create'

  resources :users
  resources :meetings
end
