# typed: strict
Rails.application.routes.draw do
  resources :workflow_templates
  resources :clients
  resources :contacts
  resources :jobs, only: %i[new create]

  namespace :jobs do
    resources :clients, only: %i[new create]
  end
  resources :notifications
end
