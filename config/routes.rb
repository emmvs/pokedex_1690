Rails.application.routes.draw do
  root 'poketrainers#index'
  resources :poketrainers do
    # Need this one if we want to have a new page
    # resources :pokemons, only: [:new, :create]
    # Need this one if we want to stay on the same paghe
    resources :pokemons, only: [:create, :show]
  end

  # get '/poketrainers', to: 'poketrainers#index'
  # get '/poketrainers/:id', to: 'poketrainers#show'

  # get '/poketrainers/:id/pokemons/new', to: 'pokemons#new', as: 'go_to_pokemon_form'
  # post '/poketrainers/:id/pokemons', to: 'pokemons#create', as: 'post_pokemon'

  # get '/poketrainers/:id/pokemons/:id', to: 'pokemons#show', as: 'show_pokemon'

end

  # collection (index)
  # member (show)
