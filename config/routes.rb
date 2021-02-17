# typed: strict
Rails.application.routes.draw do
  resources :jobs, only: %i[new create]

  namespace :jobs do
    resources :clients, only: %i[new create]
  end
  resources :notifications
end
