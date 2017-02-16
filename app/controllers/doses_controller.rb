class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
    @dose =  Dose.new(params[:dose])
    @dose.save
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to doses_path
  end
end
