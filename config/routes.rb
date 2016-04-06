Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/users' => 'users#index'
      get '/users/:id' => 'users#show'
      post '/users' => 'users#create'
      patch '/users/:id' => 'users#update'
      delete '/users/:id' => 'users#destroy'
    end
  end
end
