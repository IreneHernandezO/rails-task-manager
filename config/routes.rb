Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index'   #read all
  get 'tasks/new', to: 'tasks#new'  #create
  get 'tasks/:id', to: 'tasks#show' , as: :task  #read one specific

  post 'tasks', to: 'tasks#create' #create

  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit #update
  patch 'tasks/:id', to: 'tasks#update' #update

  delete "tasks/:id", to: "tasks#destroy"
end
