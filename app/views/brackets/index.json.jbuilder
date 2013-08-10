json.array!(@brackets) do |bracket|
  json.extract! bracket, :tournament_id
  json.url bracket_url(bracket, format: :json)
end