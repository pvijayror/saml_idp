Rails.application.routes.draw do
  # get 'home/index'

  devise_for :users

  root to: "home#index"

  get '/saml/auth' => 'saml_idp#create'
  post '/saml/auth' => 'saml_idp#create'
  match '/saml/logout' => 'saml_idp#logout', via: [:get, :post, :delete]
end
