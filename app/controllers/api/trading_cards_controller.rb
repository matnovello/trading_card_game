class Api::TradingCardsController < ApplicationController
  def index
    @cards = Card.all
    if params[:sort] == "rarity" && params[:sort_order] == "desc"
      @cards = Card.order(rarity: :desc)
      render "index.json.jb"
    else
      render "index.json.jb"
    end
  end

  def show
    @card = Card.find(params[:id])
    render "show.json.jb"
  end

  def create
    @card = Card.new({ name: params[:name], description: params[:description], rarity: params[:rarity] })
    @card.save
    render "show.json.jb"
  end

  def patch
    @card = Card.find(params[:id])
    @card.name = params[:name] || @card.name
    @card.description = params[:description] || @card.description
    @card.rarity = params[:rarity] || @card.rarity
    @card.save
    render "show.json.jb"
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    render json: { message: "The Card #{card.name} with ID of #{card.id} has been successfully deleted" }
  end
end
