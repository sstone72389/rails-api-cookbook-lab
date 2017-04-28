# frozen_string_literal: true
Rails.application.routes.draw do
  resources :recipes, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  # get '/ingredients', to: 'ingredients#index'
  resources :ingredients, only: [:index, :show, :destroy, :update, :create]
end
