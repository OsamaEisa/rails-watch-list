Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # # all lists
  # get 'lists', to: 'lists#index'

  # # create new list
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'

  # # show a list
  # get 'lists/:id', to: 'lists#show'

  # resources :movies
  root to: 'lists#index'

  resources :lists, only: %i[new create show] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
end
