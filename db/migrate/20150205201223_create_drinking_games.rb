class CreateDrinkingGames < ActiveRecord::Migration
  def change
    create_table :drinking_games do |t|
      t.string :name
      t.string :players
      t.text :rules

      t.timestamps
    end
  end
end
