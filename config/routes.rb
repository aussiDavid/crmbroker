Rails.application.routes.draw do

  
  devise_for :accounts, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  # resource :account, only: %i{update edit}
  resource :account, only: %i{update edit show}
  authenticated :account do
    root 'accounts#show', as: :authenticated_root
  end

  resources :crms

  root 'creatives#index'
  mount_griddler

end
