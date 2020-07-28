Rails.application.routes.draw do
  resources :groups
  resources :students
  resources :web_courses
  root 'web_courses#index'
end