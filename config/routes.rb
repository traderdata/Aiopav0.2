Rails.application.routes.draw do

  resources :users
  resources :marketplaces
  resources :suplier_marketplaces
  resources :supliers

  get 'dashboard/index'

  get 'signin', to: 'users#signin'
  get 'signout', to: 'users#signout'
  get 'signup', to: 'users#signup',:subdomain=>'www'

  post 'users/signinprocess'
  post 'users/signupprocess'

  get 'settings', to: 'supliers#edit'

  match '/', to: 'users#signup', constraints: { subdomain: 'www' }, via: [:get, :post, :put, :patch, :delete]
  match '/', to: 'users#signin', constraints: { subdomain: /.+/ }, via: [:get, :post, :put, :patch, :delete]

  root :to => 'users#signup', :subdomain => 'www'


end
