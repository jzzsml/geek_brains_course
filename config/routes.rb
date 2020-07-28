Rails.application.routes.draw do
  resources :groups
  resources :students
  resources :web_courses
  root 'web_courses#index'

  match '/groups/:group_id/enroll' => 'groups#enroll', via: [:get, :post]
end