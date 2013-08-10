json.array!(@teams) do |team|
  json.extract! team, :name, :age_group, :city, :state, :contact
  json.url team_url(team, format: :json)
end