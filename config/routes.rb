Rails.application.routes.draw do
  root 'application#index'
  namespace :api do
    resources :staffing_impacts, only: [:index]
  end
end
