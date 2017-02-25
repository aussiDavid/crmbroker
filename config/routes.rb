Rails.application.routes.draw do
  root 'creatives#index'

  resources :accounts, only: %i{update show edit}
  resources :crms

  mount_griddler

end
