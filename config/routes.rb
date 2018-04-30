Rails.application.routes.draw do

  get 'users/:id', to: "users#show"
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :ldap
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
