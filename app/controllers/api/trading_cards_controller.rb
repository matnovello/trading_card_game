class Api::TradingCardsController < ApplicationController
  def index
    render "index.json.jb"
  end
end
