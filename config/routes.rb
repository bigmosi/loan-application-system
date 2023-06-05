Rails.application.routes.draw do
  devise_for :users
   root "loans#new"
    resources :loans, only: [:new, :create, :show]
    namespace :admin do
      resources :loans, only: [:index, :show]
    end

end
