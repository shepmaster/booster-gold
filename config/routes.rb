# typed: strict
Rails.application.routes.draw do
  resources :clients
  resources :jobs
  resources :notifications
end
