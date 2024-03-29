json.array!(@games) do |game|
  json.extract! game, :picture, :name, :type, :rating, :description, :comment, :user_id
  json.url game_url(game, format: :json)
end
