# typed: strict
Rails.application.routes.draw do
  resources :gravy, only: %i[index]
end
