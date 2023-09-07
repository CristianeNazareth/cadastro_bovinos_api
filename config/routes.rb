Rails.application.routes.draw do
  resources :bovinos, params: :termo, only: [:create, :show, :index]


end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



