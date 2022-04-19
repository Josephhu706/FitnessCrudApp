class CardsController < ApplicationController
  require "scryfall/cards"

  def index
    @cards = Card.all
  end

  def new
  end

  def create
    #create a card, find the decklist selected and add the card to the decklists cards.
    card= Card.create card_params
    decklist = Decklist.find params[:card][:decklist_ids]
    decklist.cards << card
    redirect_to card
  end

  def searchresult
    #Take the search parameter from the selecte menu on search page
    @searchparams = params[:search_parameter]
    @searchtext = params[:card]
    @decklists = @current_user.decklists
    #search limited to name, type and color because too much data in api

    #search by name
    if params[:search_parameter] == "name"
      @info = Scryfall::Cards.search "set:sld name:#{params[:card].titleize}"
    #search by color
    elsif params[:search_parameter] == "color"
      color = params[:card]
      if color.downcase == "colorless"
        @info = Scryfall::Cards.search "set:sld color=#{color}"
      else
        @info = Scryfall::Cards.search "set:sld color>=#{color}"
      end
    #search by type
    elsif params[:search_parameter] == "type"
      @info = Scryfall::Cards.search "set:sld t:#{params[:card]}"
    else
      #no search results, return nothing
      @info = Scryfall::Cards.named_fuzzy "NOTHING"
    end
    render :results
  end

  def show
    @card = Card.find params[:id]
    decklistids = @card.decklist_ids
    @decklists = Decklist.find decklistids
  end

  def destroy
    card = Card.find params[:id]
    card.destroy
    redirect_to cards_path
  end

  #strict params
  private
  def card_params
    params.require(:card).permit(:title, :image, :price, :release, :rarity, :oracle, :card_type) 
  end
end
