Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    #index
    get "/trading_cards" => "trading_cards#index"
    #show
    get "/trading_cards/:id" => "trading_cards#show"
    #create
    post "/trading_cards" => "trading_cards#create"
    #patch
    patch "/trading_cards/:id" => "trading_cards#patch"
    #delete
    post "/trading_cards/:id" => "trading_cards#destroy"
  end
end
