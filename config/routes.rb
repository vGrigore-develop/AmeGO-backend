# frozen_string_literal: true
Rails.application.routes.draw do

  get '/users', to: 'users#index'
  post '/user', to: 'users#create'
end
