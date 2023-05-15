Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # Lister toutes les tâches
  # root 'tasks#index'
  # # LIste all
  # get 'tasks', to: 'tasks#index' # Affichage de la liste de toutes tâches
  # # Create a task
  # get 'tasks/new', to: 'tasks#new', as: :new_task # Ajout d'une nouvelle tâche
  # post 'tasks', to: 'tasks#create' # Soumission du form ajout
  # # Afficher une tache
  # get 'tasks/:id', to: 'tasks#show', as: :task # Affichage d'une tâche dans détail
  # # Update une tache
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'
  # # Delete : Suppression d'une tâche
  # delete 'tasks/:id', to: 'tasks#destroy'
  resources :tasks
end
