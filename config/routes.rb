Rails.application.routes.draw do

  root to: 'tasks#index'

  get 'tasks/new'

  get "/edit", to: "tasks#edit"
  get "/edit/", to: "tasks#create"

  get 'tasks/update'

  get 'tasks/destroy'

  get 'tasks/index'

  get 'tasks/create'

  resources:tasks

  get '/register', to: 'tasks#new'
  post '/register', to: 'tasks#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
