Rails.application.routes.draw do
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'register' => 'users#new'
  get 'admin' => 'users#admin'
  get 'instructors' => 'users#instructors'
  get 'admin' => 'users#admin'

  get 'courses' => 'courses#index'
  get 'students' => 'students#index'

  get 'results' => 'pages#results'
  get 'your' => 'cohorts#your'

  root 'pages#home'

  resources :students
  resources :users
  resources :courses
  resources :cohorts

  get 'students/new'
  get 'students/show'
  delete 'student' => 'students#destroy'
  get 'users/new'
  get 'users/show'
  get 'users/index'
  get 'cohorts/new'

  get 'cohorts/show'
  get 'cohorts/index'
  get 'courses/new'
  get 'courses/show'
  get 'courses/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
