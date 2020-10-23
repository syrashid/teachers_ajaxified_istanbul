Rails.application.routes.draw do
  get 'teachers/index'
  get 'teachers/show'
  root to: 'pages#home'
  resources :teachers, only: [ :index, :show ] do
    resources :reviews, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
