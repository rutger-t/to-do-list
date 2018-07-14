Rails.application.routes.draw do

  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
  root to: 'tasks#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :tasks
  resources :users
  end
  resources :account_activations, only: [:edit]
  get "*path", to: redirect("/#{I18n.default_locale}/%{path}")
  get "", to: redirect("/#{I18n.default_locale}")
  
end
