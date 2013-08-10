json.array!(@tournaments) do |tournament|
  json.extract! tournament, :name, :city, :state, :start_date, :end_date
  json.url tournament_url(tournament, format: :json)
end