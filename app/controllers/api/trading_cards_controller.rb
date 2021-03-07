class Api::TradingCardsController < ApplicationController
  def index
    @cards = Card.all
    render "index.json.jb"
  end
end
