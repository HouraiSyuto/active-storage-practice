Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'books#index'
end
