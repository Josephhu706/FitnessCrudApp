class CardsController < ApplicationController
  require "scryfall/cards"

  def index
    @cards = Card.all
  end

  def new
  end

  def create
    card= Card.create card_params
    decklist = Decklist.find params[:card][:decklist_ids]

    decklist.cards << card
    redirect_to card
  end

  def searchresult
      @decklists = @current_user.decklists
      @number = 0
    if params[:search_parameter] == "name"
      @number = 1
      @info = Scryfall::Cards.search "set:sld name:#{params[:card].titleize}"
    elsif params[:search_parameter] == "color"
      color = params[:card]
      @number = 2
      if color.downcase == "colorless"
        @info = Scryfall::Cards.search "set:sld color=#{color}"
      else
        @info = Scryfall::Cards.search "set:sld color>=#{color}"
      end
    elsif params[:search_parameter] == "type"
      @info = Scryfall::Cards.search "set:sld t:#{params[:card]}"
    else
      @info = Scryfall::Cards.named_fuzzy "NOTHING"
    end
    render :results
  end

  def show
    @card = Card.find params[:id]
  end

  def destroy
    card = Card.find params[:id]
    card.destroy
    redirect_to cards_path
  end

  private
  def card_params
    params.require(:card).permit(:title, :image, :price, :release, :rarity, :oracle) 
  end
end
