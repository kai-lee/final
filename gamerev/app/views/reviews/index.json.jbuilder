json.array!(@reviews) do |review|
  json.extract! review, :comment, :game_id
  json.url review_url(review, format: :json)
end
