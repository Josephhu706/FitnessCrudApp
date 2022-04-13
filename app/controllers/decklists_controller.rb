class DecklistsController < ApplicationController
  def index
    @decklists = Decklist.all
  end

  def show
    @decklist = Decklist.find params[:id]
    sortCards(@decklist.cards)
  end

  def new
    @decklist = Decklist.new
    @decklist.user_id = @current_user.id
    sortCards(@current_user.cards.uniq)
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
    sortCards(@current_user.cards.uniq)
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

  def sortCards (cardlist)
    @creatureArray=[]
    @landArray=[]
    @artifactArray=[]
    @enchantmentArray=[]
    @planeswalkerArray=[]
    @instantArray=[]
    @sorceryArray=[]
    cardlist.each do |card|
      if card.card_type.include? "Creature"
          @creatureArray.push(card)
      elsif card.card_type.include? "Land"
          @landArray.push(card)
      elsif card.card_type.include? "Artifact"
          @artifactArray.push(card)
      elsif card.card_type.include? "Enchantment"
          @enchantmentArray.push(card)
      elsif card.card_type.include? "Planeswalker"
          @planeswalkerArray.push(card)
      elsif card.card_type.include? "Instant"
          @instantArray.push(card)
      elsif card.card_type.include? "Sorcery"
          @instantArray.push(card)
      end
    end
  end

  private
  def decklist_params #strong params
    params.require(:decklist).permit(:name, :cover, :description, :card_ids => []) #asks for params without getting directly from params object
  end
end
