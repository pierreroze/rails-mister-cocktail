class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(params[:dose])
    @dose.save
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to doses_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end

end
