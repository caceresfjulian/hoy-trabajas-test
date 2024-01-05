Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :banks
  resources :suppliers do
    get '/page/:page', action: :index, on: :collection, as: :page
  end
end
