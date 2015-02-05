json.array!(@drinking_games) do |drinking_game|
  json.extract! drinking_game, :id, :name, :players, :rules
  json.url drinking_game_url(drinking_game, format: :json)
end
