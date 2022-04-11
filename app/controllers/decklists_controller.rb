class DecklistsController < ApplicationController
  def index
    @decklists = Decklist.all
  end

  def new
    @decklist = Decklist.new
  end

  def edit
    @decklist = Decklist.find params[:id]
  end

  def update
    decklist = Decklist.find params[:id]
    decklist.update decklist_params
    redirect_to decklist
  end

  def show
    @decklist = Decklist.find params[:id]
  end

  def destroy
    decklist = Decklist.find params[:id]
    decklist.destroy
    redirect_to decklists_path
  end

  private
  def decklist_params #strong params
    params.require(:decklist).permit(:name, :cover, :card_ids => []) #asks for params without getting directly from params object
  end
end
