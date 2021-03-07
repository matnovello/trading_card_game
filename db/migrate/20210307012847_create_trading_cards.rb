class CreateTradingCards < ActiveRecord::Migration[6.1]
  def change
    create_table :trading_cards do |t|
      t.string :name
      t.string :realm
      t.integer :rarity
      t.string :description

      t.timestamps
    end
  end
end
