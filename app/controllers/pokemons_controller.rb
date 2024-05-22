class PokemonsController < ApplicationController
  def show
    @poketrainer = Poketrainer.find(params[:poketrainer_id])
    @pokemon = Pokemon.find(params[:id])
  end

  def create
    # Collect the Trainer
    @poketrainer = Poketrainer.find(params[:poketrainer_id])
    # Create an filled form of a pokemon (user info from the strong params)
    @pokemon = Pokemon.new(pokemon_params)
    # Pass the id of the poketrainer to the pokemon itself (bc it cannot exist w/o a trainer)
    @pokemon.poketrainer_id = @poketrainer.id
    if @pokemon.save!
      redirect_to poketrainer_path(@poketrainer.id)
    else
      render 'poketrainers/show', status: :unprocessable_entity
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :power)
  end
end
