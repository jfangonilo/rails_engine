Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'invoices/index'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :merchants, only: [:index, :show] do
        resources :items, only: [:index]
        resources :invoices, only: [:index]
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
