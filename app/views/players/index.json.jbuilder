json.array!(@players) do |player|
  json.extract! player, :first_name, :last_name, :team_id, :height_feet, :height_inches, :weight, :phone, :address
  json.url player_url(player, format: :json)
end