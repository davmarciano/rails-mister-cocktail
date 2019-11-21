class DosesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
