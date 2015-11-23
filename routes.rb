Rails.application.routes.draw do
  root "todos#index"

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :todos, except: [:new, :edit]
    end
  end    
end
