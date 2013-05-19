Todo::Application.routes.draw do
  
  resources :projects do
    resources :tasks
  end

  root :to => "projects#index"
  
  # Kasutajad ja sessioonid
  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"

  get "sign_up" => "users#new"

  resources :users
  resources :sessions
end
