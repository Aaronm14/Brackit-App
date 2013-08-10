json.array!(@games) do |game|
  json.extract! game, :home_team, :away_team, :time, :location, :home_team_score, :away_team_score
  json.url game_url(game, format: :json)
end