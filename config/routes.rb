# frozen_string_literal: true
Rails.application.routes.draw do

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get 'calendar/show' => 'calendar#show'

  resources :users, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  resources :challenges, except: [:new, :edit]
  resources :diaries, only: [:index, :show, :create, :update, :destroy]
  resources :calendar, only: [:show]

end
