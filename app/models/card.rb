class Card < ApplicationRecord
  def rarity_info
    if rarity != " "
      return "this card has a rarity of #{rarity} cuz i said so"
    else
      return "no rarity"
    end
  end
end
