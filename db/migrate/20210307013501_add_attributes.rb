class AddAttributes < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :name, :string
    add_column :cards, :description, :string
    add_column :cards, :rarity, :integer
    remove_column :cards, :type, :string
  end
end
