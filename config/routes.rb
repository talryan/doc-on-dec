Rails.application.routes.draw do
  root 'welcome#home'
  resources :users
  resources :hospitals
  resources :appointments
  resources :patients
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end