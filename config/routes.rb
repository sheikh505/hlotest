Rails.application.routes.draw do
  resources :subjects
  resources :students
  resources :teachers
  resources :cllasses
  root 'home#index'




end
