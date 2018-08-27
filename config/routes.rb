Rails.application.routes.draw do
  get 'cohorts/new'
  get 'cohorts/edit'
  get 'cohorts/show'
  get 'cohorts/index'
  get 'courses/new'
  get 'courses/edit'
  get 'courses/show'
  get 'courses/index'
  get 'pages/home'
  get 'register' => 'users#new'
  get 'login' => 'users#new'
  get 'admin' => 'users#new'
  get 'instructors' => 'users#index'
  get 'courses' => 'courses#index'
  get 'students' => 'students#index'

  root 'pages#home'

  resources :students
  resources :users
  resources :courses
    resources :cohorts

  get 'students/new'
  get 'students/edit'
  get 'students/show'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  get 'users/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
