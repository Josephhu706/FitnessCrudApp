class DecklistsController < ApplicationController
  def index
    @decklists = Decklist.all
  end

  def show
    @decklist = Decklist.find params[:id]
  end

  def new
    @decklist = Decklist.new
  end

  def create
    decklist = Decklist.new decklist_params
    decklist.user_id = @current_user.id
    if params[:file].present?
      req=Cloudinary::Uploader.upload(params[:file])
      decklist.cover = req["public_id"]
    end
    decklist.update_attributes(decklist_params)
    decklist.save
    redirect_to decklist_path(decklist)
  end

  def edit
    @decklist = Decklist.find params[:id]
    @decklist.user_id = @current_user.id
  end

  def update
    decklist = Decklist.find params[:id]
    decklist.user_id = @current_user.id
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      decklist.cover = req["public_id"]
    end
    decklist.update_attributes(decklist_params)
    decklist.save
    redirect_to decklist
  end

  def destroy
    decklist = Decklist.find params[:id]
    decklist.destroy
    redirect_to decklists_path
  end

  private
  def decklist_params #strong params
    params.require(:decklist).permit(:name, :cover, :description, :card_ids => []) #asks for params without getting directly from params object
  end
end
