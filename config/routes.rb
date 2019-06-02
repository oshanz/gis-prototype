Rails.application.routes.draw do
  root 'map#index'

  namespace :api do
    namespace :v1 do
      get 'facilities', to: 'facilities#index'
    end
  end
end
