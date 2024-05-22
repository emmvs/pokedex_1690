class PoketrainersController < ApplicationController
  before_action :set_poketrainer, only: %i[ show edit update destroy ]

  # GET /poketrainers
  def index
    @poketrainers = Poketrainer.all
  end

  # GET /poketrainers/1
  def show
    @pokemon = Pokemon.new
  end

  # GET /poketrainers/new
  def new
    @poketrainer = Poketrainer.new
  end

  # GET /poketrainers/1/edit
  def edit
  end

  # POST /poketrainers
  def create
    @poketrainer = Poketrainer.new(poketrainer_params)

    if @poketrainer.save
      redirect_to @poketrainer, notice: "Poketrainer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /poketrainers/1
  def update
    if @poketrainer.update(poketrainer_params)
      redirect_to @poketrainer, notice: "Poketrainer was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /poketrainers/1
  def destroy
    @poketrainer.destroy!
    redirect_to poketrainers_url, notice: "Poketrainer was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poketrainer
      @poketrainer = Poketrainer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poketrainer_params
      params.require(:poketrainer).permit(:name, :country, :age)
    end
end
